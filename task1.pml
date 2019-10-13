show spheres
hide all
show lines, polymer.protein
hide all
show ribbon, polymer.protein

show cartoon, all
color grey, (name C*)
color red, (name O*)
color blue, (name N*)
color yellow,(name S*) 

set sphere_scale, 0.25, (all)
set line_width, 2.5
show sp, organic or polymer.nucleic
show lines, organic or polymer.nucleic

set sphere_scale, 0.5, (solvent)
show sphere, solvent

png /tmp/all_components.png, width=8cm, dpi=300, ray=1

show cartoon

show sp, chain A and (resi 1)
show lines, chain A and (resi 1)

print len(cmd.get_model("poly").get_residues())

show sp, chain A and (resi 153)
show lines, chain A and (resi 153)

label i. 1, "(%s, %s)" % (resn, resi)
label i. 153, "(%s, %s)" % (resn, resi)

select chain A and (resi 153) and name o
show sp, sele
set sphere_scale, 0.4, (sele)
label n. O and i. 153, " %s:%s %s" % (resi, resn, name)

select chain A and (resi 1) and name n
show sp, sele
set sphere_scale, 0.4, (sele)
label n. N and i. 1, " %s:%s %s" % (resi, resn, name)