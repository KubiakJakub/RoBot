!=======================================================================
! Generated by  : PSCAD v4.2.1
!
! Warning:  The content of this file is automatically generated.
!           Do not modify, as any changes made here will be lost!
!-----------------------------------------------------------------------
! Component     : Main
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

!---------------------------------------
! Variable Declarations
!---------------------------------------


! Subroutine Parameters

! Electrical Node Indexes

! Control Signals

! Internal Variables

! Indexing variables
      INTEGER ISUBS                               ! SS/Node/Branch/Xfmr


!---------------------------------------
! Record local indexes
!---------------------------------------

! Dsdyn <-> Dsout transfer index storage
      NTXFR = NTXFR + 1
      TXFR(NTXFR,1) = NSTOL
      TXFR(NTXFR,2) = NSTOI
      TXFR(NTXFR,3) = NSTOF

! Record Offset and Increment Storage Counters
      NNODE     = NNODE + 2


!---------------------------------------
! Transfers from storage arrays
!---------------------------------------


!---------------------------------------
! Transfer from Imports
!---------------------------------------


!---------------------------------------
! Electrical Node Lookup
!---------------------------------------


!---------------------------------------
! Read Model data (if any)
!---------------------------------------

      IF ( TIMEZERO ) THEN
         FILENAME = 'Main.dta'
         CALL EMTDC_OPENFILE
         SECTION = 'DATADSD:'
         CALL EMTDC_GOTOSECTION
      ENDIF

!---------------------------------------
! Generated code from module definition
!---------------------------------------


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

!---------------------------------------
! Variable Declarations
!---------------------------------------


! Electrical Node Indexes

! Control Signals

! Internal Variables

! Indexing variables
      INTEGER ISTOL, ISTOI, ISTOF                 ! Storage Indexes
      INTEGER ISUBS                               ! SS/Node/Branch/Xfmr


!---------------------------------------
! Record local indexes
!---------------------------------------

! Dsdyn <-> Dsout transfer index storage
      NTXFR = NTXFR + 1
      ISTOL = TXFR(NTXFR,1)
      ISTOI = TXFR(NTXFR,2)
      ISTOF = TXFR(NTXFR,3)

! Record Offset and Increment Storage Counters
      NNODE     = NNODE + 2


!---------------------------------------
! Transfers from storage arrays
!---------------------------------------


!---------------------------------------
! Electrical Node Lookup
!---------------------------------------


!---------------------------------------
! Read Model data (if any)
!---------------------------------------

      IF ( TIMEZERO ) THEN
         FILENAME = 'Main.dta'
         CALL EMTDC_OPENFILE
         SECTION = 'DATADSO:'
         CALL EMTDC_GOTOSECTION
      ENDIF

!---------------------------------------
! Generated code from module definition
!---------------------------------------


!---------------------------------------
! Feedbacks and transfers to storage
!---------------------------------------


!---------------------------------------
! Close Model Data read
!---------------------------------------

      IF ( TIMEZERO ) CALL EMTDC_CLOSEFILE
      RETURN
      END

