using Plots

function save_array(Aname,A)
    fname = string(Aname,".bin")
    out = open(fname,"w"); write(out,A); close(out)
end

function load_array(Aname,A)
    fname = string(Aname,".bin")
    fid=open(fname,"r"); read!(fid,A); close(fid)
end

function main()
    A = rand(3,3)
    B = similar(A)
    save_array("out_A",A)
    load_array("out_A",B)
    return B
end

B = main()
heatmap(B)
