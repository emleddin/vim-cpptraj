" VIM syntax highlighting file
" Language: cpptraj
" Maintainer: E. M. Leddin
" Download: https://github.com/emleddin/vim-cpptraj
" Get cpptraj
" URL: https://github.com/Amber-MD/cpptraj

" Quit when a syntax file was already loaded.
if exists('b:current_syntax') | finish|  endif

" DataSet Aspects are for the columns in the outfile -- not needed here
" Finish read/write, dataset, change

" Comment highlighting -- use # until end of line
syn match celCmt "#.*$"

""""""""""""
" Keywords "
""""""""""""
" Keywords for cpptraj actions and analyses
"syn keyword celCmd
" ignore help, list
syn keyword celCmd 2drms
syn keyword celCmd activeref align
syn keyword celCmd angle angleinfo angles areapermol atomiccor atomicfluct
syn keyword celCmd atominfo atommap atoms autocorr autoimage average avg
syn keyword celCmd bondinfo bonds bounds box
syn keyword celCmd calc calcstate catcrd center change charge check
syn keyword celCmd checkchirality checkoverlap checkstructure
syn keyword celCmd clear closest closestwaters cluster clusterdihedral
syn keyword celCmd combinecrd comparetop contacts corr correlationcoe crdaction
syn keyword celCmd cphstats crank crankshaft crdout crdfluct create
syn keyword celCmd createcrd createreservoir createset crosscorr curvefit
syn keyword celCmd datafile datafilter dataset debug density diagmatrix
syn keyword celCmd diffusion dihedral dihedralinfo dihedralrms dihedrals dihrms
syn keyword celCmd distance divergence drms drmsd ds2matrixds2matrix  dssp
syn keyword celCmd energy ensemble ensemblesize ensextension esander exit
syn keyword celCmd FFT filter fixatomorder fiximagedbonds
syn keyword celCmd gist go grid
syn keyword celCmd hausdorff hbond hist histogram
syn keyword celCmd image improperinfo impropers integrate ired
syn keyword celCmd jcoupling
syn keyword celCmd kde
syn keyword celCmd lie lifetime lipidorder lipidscd lessplit loadcrd loadtraj
syn keyword celCmd lowestcurve
syn keyword celCmd makestructure mask mass matrix meltcurve minimage modes
syn keyword celCmd molinfo molsurf multicurve multidihedral multihist
syn keyword celCmd multivector
syn keyword celCmd nastruct nativecontacts noexitonerror noprogress
syn keyword celCmd outtraj
syn keyword celCmd pairwise parallelanalysis parmbox parminfo parmstrip
syn keyword celCmd parmwrite permutedihedrals phipsi point prec
syn keyword celCmd precision principal printangles printbonds printdata
syn keyword celCmd printdihedrals printimpropers printub prnlev projection
syn keyword celCmd pucker
syn keyword celCmd quit
syn keyword celCmd radgyr radial randomizeions rdf read readdata
syn keyword celCmd readensembledata readinput regress remlog removedata
syn keyword celCmd replicatecell resinfo rms rms2d
syn keyword celCmd rmsavgcorr rmsf rog rotate rotatedihedral rotdif run
syn keyword celCmd runanalysis runavg runningavg runningaverage
syn keyword celCmd scale scaledihedralk secstruct select selectds
syn keyword celCmd setvelocity silenceactions solvent
syn keyword celCmd sortensembledata spam spline splitcoords stat statistics
syn keyword celCmd stfcdiffusion strip surf symmrmsd
syn keyword celCmd temp temperature ti time timecorr torsion trajin trajout
syn keyword celCmd trans translate
syn keyword celCmd ubinfo unstrip unwrap updateparameters usediskcache
syn keyword celCmd vector vectormath velocityautocorr volmap volume
syn keyword celCmd watershell wavelet write writedata
syn keyword celCmd xtalsymm

" Only use `reference` as keyword if at the beginning of a line
syn match checkCmd "^angle"
syn match checkCmd "^average"
syn match checkCmd "^crdout"
syn match checkCmd "^charge"
syn match checkCmd "^check"
syn match checkCmd "^center"
syn match checkCmd "^density"
syn match checkCmd "^dihedrals"
syn match checkCmd "^distance"
syn match checkCmd "^ired"
syn match checkCmd "^lifetime"
syn match checkCmd "^mask"
syn match checkCmd "^reference"
syn match checkCmd "^rmsd"
syn match checkCmd "^runavg"
syn match checkCmd "^scale"
syn match checkCmd "^parm"
syn match checkCmd "^ti"
syn match checkCmd "^trajout"
" outtraj pairdist

" Do same for shared methods
syn match checkCmd "^image"
syn match checkCmd "^kde"
syn match checkCmd "^mass"
syn match checkCmd "^minimage"
syn match checkCmd "^volume"
syn match checkCmd "^trans"

""""""""""""""
" Statements "
""""""""""""""
" Additional options: These should have something following them
" In the manual like `keyword [statement <thing>]`
"syn keyword celAssn
syn keyword celAssn addbond adpdata acceptormask acceptout
syn keyword celAssn amd amoeba_itmax amoeba_nsearch amoeba_tol
syn keyword celAssn anchor around as assignout avgfmt
syn keyword celAssn avgincrement avgmax avgskip avgout avout axis0 axis1
syn keyword celAssn bandwidth baseref beg bestrep bfacbyres bfacdata bfacmax
syn keyword celAssn bins bondsearch bound box
syn keyword celAssn boxref bptype bridgeout
syn keyword celAssn bs_fac bs_points bs_samples bs_seed buffer byresidue
syn keyword celAssn calcadp chainid checkival choosepoints closestout
syn keyword celAssn clusterout clusters clusterinfo clustermapout
syn keyword celAssn clustervtime clustersvtime cmapdetail
syn keyword celAssn com contactpdb countout corrout cpopvtime cprefix
syn keyword celAssn crdname crdset curveout
syn keyword celAssn cut cutelec cutevdw cutout cvtwindow
syn keyword celAssn d0 data deffout deltafile densitycut dgbulk dhbulk dihcovar
syn keyword celAssn diffout diel dihedralfile dihtype dipole dir directsum
syn keyword celAssn dist distancecut dme donormask donorhmask
syn keyword celAssn dplrout ds dsumtol dt dvdfile dx dy dz
syn keyword celAssn edata edataout emapout end eout epsilonplot
syn keyword celAssn erfcdx etype evecs ewcoeff ewcoefflj ext
syn keyword celAssn factor familiar fft filterset
syn keyword celAssn fit_itmax fit_tol fixed form fracplot
syn keyword celAssn fracplotout frame framefile free ftype fuzz
syn keyword celAssn gridcntr griddim gridspacn groovecalc group groupby
syn keyword celAssn hbcut
syn keyword celAssn ibeg idea iend ig index info infofile intrdf interval
syn keyword celAssn ired itmax
syn keyword celAssn lagmax lj ljswidth loadpairdist lower
syn keyword celAssn kdist kfile kldiv klout kseed
syn keyword celAssn madura mapout mask1 mask2 maskmol2 maskout maskp maskpdb
syn keyword celAssn matricesout max maxit maxlag maxmin maxwidth
syn keyword celAssn mdfrc mdvel meshfactor meshmax meshmin meshsize
syn keyword celAssn min minpoints mlimits mobile move
syn keyword celAssn name name1 name2 naout nbrcut ncorr newset nexp nfft
syn keyword celAssn NHdist nlayers nmesh
syn keyword celAssn nmols nmwizvecs nmwizfile nmwizmask noeout
syn keyword celAssn nncontactpdb nq nrows nskip nstlim ntc ntwx nvecs nwout nx
syn keyword celAssn occdata occmax offset onlyframes onlymembers order origin
syn keyword celAssn origincut outab outba outfile outprefix outthermo
syn keyword celAssn outtraj outxbins outxmax outxmin overlap overlay
syn keyword celAssn overlayparm
syn keyword celAssn pairdist parmindex parmname parmout
syn keyword celAssn pcmin pcmax pdbcut pdbout
syn keyword celAssn peakcut peakfile
" two-word
syn keyword celAssn perres perresout
syn keyword celAssn perresmask phibins prec prefix printmode probe
syn keyword celAssn psibins
syn keyword celAssn radii radscale random range rawrdf reduce ref refdens
syn keyword celAssn readtxt readinfo rexp refcut refindex
syn keyword celAssn refmask refrange reftraj
" two-word
syn keyword celAssn relax freq
syn keyword celAssn remap remlog remove removebonds
syn keyword celAssn remdtraj remdtrajidx remdtrajvalues repfmt
syn keyword celAssn reportfile repout reptime reptimeslope reptimeslopeout
syn keyword celAssn req res resmap resoffset resout resrange resseries
syn keyword celAssn resseriesout results resultsout rk rmatrix rmout
syn keyword celAssn rmsout rseed rsumtol rvecin rvecout
syn keyword celAssn s0 savematrices savenreps savevectors scalesimplex
syn keyword celAssn searchtype segid segmask separateout seriesnnout seriesout
syn keyword celAssn setname sg sieve sil singlerepout singlerepfmt site_size
syn keyword celAssn size skipE skipS
syn keyword celAssn smoothdensity solutemask
syn keyword celAssn solv solventacceptor solventdonor solventmask
syn keyword celAssn sparse splitframe start state stateout stats statsout
syn keyword celAssn step stop summary summarysplit sumout sx sy sz
syn keyword celAssn taildist tailstart tailend tcorr tempi tf thermo
syn keyword celAssn ti time time0 tgtrange title
syn keyword celAssn titletype tmode tol totalout traj3d trajargs trajfmt
syn keyword celAssn trajnames trajoutfmt trajoutmask transout tstep type
syn keyword celAssn unsat update upper usedata uuseries uvseries
syn keyword celAssn value vec1 vec2 vecs vmapout
syn keyword celAssn window writecontacts
syn keyword celAssn x xlabel xmin xoffset xstep xvals xfmt
syn keyword celAssn y ylabel ymin yoffset ystep
syn keyword celAssn z zlabel zmin zoffset zstep zcut zanglecut

" Deal with out files
syn match celAssn " out "

"""""""""""
" Methods "
"""""""""""
" Specific types of command (like category of clustering)
" These elaborate on the command, but don't have a number or name following
"syn keyword celMethod
syn keyword celMethod alpha beta gamma delta epsilon zeta nu1 nu2 h1p
syn keyword celMethod c2p chin phi psi chip omega
syn keyword celMethod 3dna
syn keyword celMethod adpout all allframes altona amplitude ang anti append
syn keyword celMethod assignrefs atomxyz atype averagelinkage averageonly
syn keyword celMethod backtrack backward basic betadetail bfacscale bfactor
syn keyword celMethod bincenter binedge
syn keyword celMethod bnd bose boxcenter bridgebyatom byatom bymask
syn keyword celMethod bymol bymol1 bymol2 byres byres1 byres2
syn keyword celMethod calcall calcnohb center1 center2
syn keyword celMethod central centroid checkallresidues
syn keyword celMethod circular cmapdetail collect combined complete conect
syn keyword celMethod correl corrplane covar crdframes crdidx cremer
syn keyword celMethod crossproduct cumulative cumulative_nosieve cutoff
syn keyword celMethod dbscan deprot dih direct distcovar distances dme doeij
syn keyword celMethod doorder dorotation dotangle dotproduct dplr drct dumpq
syn keyword celMethod e14 elec electron ewald
syn keyword celMethod familiar first firstatom force forward free fullmatrix
syn keyword celMethod gauss gb geom gnu greater grid gridsearch guessbp
syn keyword celMethod header hieragglo highprecision
syn keyword celMethod ignorenv
syn keyword celMethod include_ep includesieved_cdist includesieveincalc
syn keyword celMethod includesolvent increment
syn keyword celMethod individual intout invert inverse
syn keyword celMethod keepext keepfiles kmeans
syn keyword celMethod last lastframe less linkage lj
syn keyword celMethod magnitude
syn keyword celMethod map maponly maskcenter mass maxdist maxfactor
syn keyword celMethod mexp mexpk mexpk_penalty mindist model modify
syn keyword celMethod momentum multi mwcovar
syn keyword celMethod namen nameh nameca namec nameo namesg na nb nativeout
syn keyword celMethod nb14 negative nmwiz nobondcheck nobondsearch nobox nocalc
syn keyword celMethod nochamber noconect nocovar noe_strong noe_medium
syn keyword celMethod noe_weak noelec noensextension nofit
syn keyword celMethod noframespaces noheader noimage
syn keyword celMethod nointramol nointrares nomax nomod nonbond none noorigin
syn keyword celMethod nopbc noreplicadim norotate norm normdensity normframe
syn keyword celMethod normint normpop nosort
syn keyword celMethod nosparse nosquare2d nostdout notemperature noter notime
syn keyword celMethod novdw novelocity noxcol number
syn keyword celMethod occscale oldpsf oversets oxygen
syn keyword celMethod p2 pairlist para parse pdbatom pdbres pdbter pdbv3
syn keyword celMethod perframe perresavg perrescenter perresinvert pme pqr
syn keyword celMethod present previous printatomnum ptrajformat ptrajoutput
syn keyword celMethod purewater pwrecalc
syn keyword celMethod range360 randompoint rawcurve readbox remdtraj reorder
syn keyword celMethod repframe repidx rescutoff rmsfit rot
syn keyword celMethod saveforces savenonnative scalepdbe scd separate series
syn keyword celMethod shape short sievetoframe silent simple single
syn keyword celMethod skinnb skipbadframes skipE skipS skipnative
syn keyword celMethod sort sphere square2d srmsd sum
syn keyword celMethod sybylatom sybylbond sybyltype
syn keyword celMethod tensor teradvance terbyres theta triclinic trimatrix
syn keyword celMethod trunoct
syn keyword celMethod ucell ucellx ucelly ucellz usecol21
syn keyword celMethod usefrcascoords usevelascoords usevelocity
syn keyword celMethod v14 vdw veltraj
syn keyword celMethod writeempty
syn keyword celMethod x64 xcol xydy xyz xy xz yz
syn keyword celMethod zeromomentum
" might want atoms, charge (density)
" might want name, aspect, idx, ens, dim (32.6.1)

" Deal with netcdf
syn match celMethod " nc "

"""""""""
" Highlight common file type keywords if used alone
syn match celConst " mdcrd"
syn match celConst " crd"
syn match celConst " cdf"
syn match celConst " netcdf"
syn match celConst " rst"
syn match celConst " restart"
syn match celConst " ncrestart"
syn match celConst " restartnc"
syn match celConst " dcd"
syn match celConst " charmm"
syn match celConst " cor "
syn match celConst " charmmres"
syn match celConst " pdb"
syn match celConst " mol2"
syn match celConst " binpos"
syn match celConst " trr"
syn match celConst " gro"
syn match celConst " xtc"
syn match celConst " tng"
syn match celConst " cif"
syn match celConst " arc"
syn match celConst " sqm"
syn match celConst " sdf"
syn match celConst " xyz"
syn match celConst " dtr"
syn match celConst " conflib"

""""""""""
" Add sometimes words as constants if after a space
" These get PreProc which should ideally be similar to Identifiers
syn match celConst " parm"
syn match celConst " reference"
syn match celConst " rmsd"

syn match celConst " image"
syn match celConst " kde"
syn match celConst " mass"
syn match celConst " minimage"
syn match celConst " volume"
syn match celConst " trans"

""""""""""
" Match atom selection language
syn match celInd "[:@*]['A-Za-z@0-9,:\-\^\&\=\*\?\|\!<>\%\\]\+"

"""""""""
" Add now-deprecated and potentially obsolete commands as TODO category
"syn keyword celBad
syn match celBad "^avgcoord"
syn match celBad "^remdout"
syn match celBad "^dihedralscan"
syn match celBad "^dipole"
syn match celBad "^mindist"

"""""""""""
" Specify highlight categories
hi def link celCmt Comment
hi def link celCmd Identifier
hi def link checkCmd Identifier
hi def link celAssn Statement
hi def link celMethod Type
hi def link celConst PreProc
hi def link celInd Special
hi def link celBad Todo

" Set the name for this file when VIM looks for it
let b:current_syntax = 'cpptraj'
