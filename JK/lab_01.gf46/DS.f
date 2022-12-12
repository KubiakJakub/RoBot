!=======================================================================
! Generated by: PSCAD v5.0.1.0
! Warning:  The content of this file is automatically generated.
!           Do not modify, as any changes made here will be lost!
!-----------------------------------------------------------------------
! Component     : DS
! Description   : 
!-----------------------------------------------------------------------


!=======================================================================

      SUBROUTINE DSDyn()

!---------------------------------------
! Standard includes 
!---------------------------------------

      INCLUDE 'nd.h'
      INCLUDE 'emtconst.h'
      INCLUDE 'emtstor.h'
      INCLUDE 's0.h'
      INCLUDE 's1.h'
      INCLUDE 's2.h'
      INCLUDE 's4.h'
      INCLUDE 'branches.h'
      INCLUDE 'pscadv3.h'
      INCLUDE 'fnames.h'
      INCLUDE 'radiolinks.h'
      INCLUDE 'matlab.h'
      INCLUDE 'rtconfig.h'

!---------------------------------------
! Function/Subroutine Declarations 
!---------------------------------------

!     SUBR    MainDyn       ! 

!---------------------------------------
! Variable Declarations 
!---------------------------------------


! Subroutine Arguments

! Electrical Node Indices

! Control Signals

! Internal Variables

! Indexing variables
      INTEGER ICALL_NO                            ! Module call num
      INTEGER SS                                  ! SS/Node/Branch/Xfmr


!---------------------------------------
! Local Indices 
!---------------------------------------

! Dsdyn <-> Dsout transfer index storage

      NTXFR = NTXFR + 1

      TXFR(NTXFR,1) = NSTOL
      TXFR(NTXFR,2) = NSTOI
      TXFR(NTXFR,3) = NSTOF
      TXFR(NTXFR,4) = NSTOC

! Define electric network subsystem number

      SS        = NODE(NNODE+1)

! Increment and assign runtime configuration call indices

      ICALL_NO  = NCALL_NO
      NCALL_NO  = NCALL_NO + 1

! Increment global storage indices

      NNODE     = NNODE + 2
      NCSCS     = NCSCS + 0
      NCSCR     = NCSCR + 0

!---------------------------------------
! Transfers from storage arrays 
!---------------------------------------



!---------------------------------------
! Electrical Node Lookup 
!---------------------------------------


!---------------------------------------
! Configuration of Models 
!---------------------------------------

      IF ( TIMEZERO ) THEN
         FILENAME = 'DS.dta'
         CALL EMTDC_OPENFILE
         SECTION = 'DATADSD:'
         CALL EMTDC_GOTOSECTION
      ENDIF
!---------------------------------------
! Generated code from module definition 
!---------------------------------------


! -1:[Main]  
      CALL MainDyn()


!---------------------------------------
! Feedbacks and transfers to storage 
!---------------------------------------



!---------------------------------------
! Transfer to Exports
!---------------------------------------

!---------------------------------------
! Close Model Data read 
!---------------------------------------

      IF ( TIMEZERO ) CALL EMTDC_CLOSEFILE
      RETURN
      END

!=======================================================================

      SUBROUTINE DSOut()

!---------------------------------------
! Standard includes 
!---------------------------------------

      INCLUDE 'nd.h'
      INCLUDE 'emtconst.h'
      INCLUDE 'emtstor.h'
      INCLUDE 's0.h'
      INCLUDE 's1.h'
      INCLUDE 's2.h'
      INCLUDE 's4.h'
      INCLUDE 'branches.h'
      INCLUDE 'pscadv3.h'
      INCLUDE 'fnames.h'
      INCLUDE 'radiolinks.h'
      INCLUDE 'matlab.h'
      INCLUDE 'rtconfig.h'

!---------------------------------------
! Function/Subroutine Declarations 
!---------------------------------------

!     SUBR    MainOut       ! 

!---------------------------------------
! Variable Declarations 
!---------------------------------------


! Electrical Node Indices

! Control Signals

! Internal Variables

! Indexing variables
      INTEGER ICALL_NO                            ! Module call num
      INTEGER ISTOL, ISTOI, ISTOF, ISTOC          ! Storage Indices
      INTEGER SS                                  ! SS/Node/Branch/Xfmr


!---------------------------------------
! Local Indices 
!---------------------------------------

! Dsdyn <-> Dsout transfer index storage

      NTXFR = NTXFR + 1

      ISTOL = TXFR(NTXFR,1)
      ISTOI = TXFR(NTXFR,2)
      ISTOF = TXFR(NTXFR,3)
      ISTOC = TXFR(NTXFR,4)

! Define electric network subsystem number

      SS        = NODE(NNODE+1)

! Increment and assign runtime configuration call indices

      ICALL_NO  = NCALL_NO
      NCALL_NO  = NCALL_NO + 1

! Increment global storage indices

      NNODE     = NNODE + 2
      NCSCS     = NCSCS + 0
      NCSCR     = NCSCR + 0

!---------------------------------------
! Transfers from storage arrays 
!---------------------------------------



!---------------------------------------
! Electrical Node Lookup 
!---------------------------------------


!---------------------------------------
! Configuration of Models 
!---------------------------------------

      IF ( TIMEZERO ) THEN
         FILENAME = 'DS.dta'
         CALL EMTDC_OPENFILE
         SECTION = 'DATADSO:'
         CALL EMTDC_GOTOSECTION
      ENDIF
!---------------------------------------
! Generated code from module definition 
!---------------------------------------


! -1:[Main]  
      CALL MainOut()


!---------------------------------------
! Feedbacks and transfers to storage 
!---------------------------------------



!---------------------------------------
! Close Model Data read 
!---------------------------------------

      IF ( TIMEZERO ) CALL EMTDC_CLOSEFILE
      RETURN
      END

!=======================================================================

      SUBROUTINE DSDyn_Begin()

!---------------------------------------
! Standard includes 
!---------------------------------------

      INCLUDE 'nd.h'
      INCLUDE 'emtconst.h'
      INCLUDE 's0.h'
      INCLUDE 's1.h'
      INCLUDE 's4.h'
      INCLUDE 'branches.h'
      INCLUDE 'pscadv3.h'
      INCLUDE 'radiolinks.h'
      INCLUDE 'rtconfig.h'

!---------------------------------------
! Function/Subroutine Declarations 
!---------------------------------------

!     SUBR    MainDyn_Begin  ! 

!---------------------------------------
! Variable Declarations 
!---------------------------------------


! Subroutine Arguments

! Electrical Node Indices

! Control Signals

! Internal Variables

! Indexing variables
      INTEGER ICALL_NO                            ! Module call num
      INTEGER SS                                  ! SS/Node/Branch/Xfmr


!---------------------------------------
! Local Indices 
!---------------------------------------


! Define electric network subsystem number

      SS        = NODE(NNODE+1)

! Increment and assign runtime configuration call indices

      ICALL_NO  = NCALL_NO
      NCALL_NO  = NCALL_NO + 1

! Increment global storage indices

      NNODE     = NNODE + 2
      NCSCS     = NCSCS + 0
      NCSCR     = NCSCR + 0

!---------------------------------------
! Electrical Node Lookup 
!---------------------------------------


!---------------------------------------
! Generated code from module definition 
!---------------------------------------


! -1:[Main]  
      CALL MainDyn_Begin()


      RETURN
      END

!=======================================================================

      SUBROUTINE DSOut_Begin()

!---------------------------------------
! Standard includes 
!---------------------------------------

      INCLUDE 'nd.h'
      INCLUDE 'emtconst.h'
      INCLUDE 's0.h'
      INCLUDE 's1.h'
      INCLUDE 's4.h'
      INCLUDE 'branches.h'
      INCLUDE 'pscadv3.h'
      INCLUDE 'radiolinks.h'
      INCLUDE 'rtconfig.h'

!---------------------------------------
! Function/Subroutine Declarations 
!---------------------------------------

!     SUBR    MainOut_Begin  ! 

!---------------------------------------
! Variable Declarations 
!---------------------------------------


! Subroutine Arguments

! Electrical Node Indices

! Control Signals

! Internal Variables

! Indexing variables
      INTEGER ICALL_NO                            ! Module call num
      INTEGER SS                                  ! SS/Node/Branch/Xfmr


!---------------------------------------
! Local Indices 
!---------------------------------------


! Define electric network subsystem number

      SS        = NODE(NNODE+1)

! Increment and assign runtime configuration call indices

      ICALL_NO  = NCALL_NO
      NCALL_NO  = NCALL_NO + 1

! Increment global storage indices

      NNODE     = NNODE + 2
      NCSCS     = NCSCS + 0
      NCSCR     = NCSCR + 0

!---------------------------------------
! Electrical Node Lookup 
!---------------------------------------


!---------------------------------------
! Generated code from module definition 
!---------------------------------------


! -1:[Main]  
      CALL MainOut_Begin()


      RETURN
      END

