import QtQuick 2.9
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import QtMultimedia 5.0
import Ubuntu.Components.Popups 1.0
import Qt.labs.settings 1.0

MainView {
  id: root
  objectName: 'mainView'
  applicationName: 'soundboard.sanderklootwijk'
  automaticOrientation: true

  width: units.gu(45)
  height: units.gu(75)

  Component.onCompleted: {
    Theme.name = "Ubuntu.Components.Themes." + settings.theme
  }

  Settings {
    id: settings
    property string theme: "Ambiance"
  }


  Page {
    id: mainPage
    visible: true
    height: parent.height
    width: parent.width

    header: PageHeader {
      id: header
      title: i18n.tr("Soundboard")
      opacity: 1

      ActionBar {
        id: actionBar
        anchors.right: parent.right
        height: units.gu(6)
        numberOfSlots: 1
        actions: [
        Action {
          text: i18n.tr("About")
          iconName: "help"
          onTriggered: PopupUtils.open(aboutDialog)
        },
        Action {
          id: themeAction
          text: {
            if (settings.theme == "Ambiance"){
              i18n.tr("Night Mode")

            }
            else {
              i18n.tr("Day Mode")
            }
          }
          iconSource: {
            if (settings.theme == "Ambiance"){
              "img/night-mode.svg"

            }
            else {
              "img/day-mode.svg"
            }
          }
          onTriggered: {
            if (settings.theme == "Ambiance"){
              Theme.name = "Ubuntu.Components.Themes.SuruDark"
              settings.theme = "SuruDark"
            }
            else {
              Theme.name = "Ubuntu.Components.Themes.Ambiance"
              settings.theme = "Ambiance"
            }
          }
        }
        ]
      }

      extension: Sections {
        id: sections
        anchors {
          horizontalCenter: parent.horizontalCenter
          bottom: parent.bottom
        }

        actions: [
        Action {
          text: i18n.tr("General")
        },
        Action {
          text: i18n.tr("Movie")
        },
        Action {
          text: i18n.tr("Game")
        },
        Action {
          text: i18n.tr("Ringtones")
        }
        ]
        onSelectedIndexChanged: {
          tabView.currentIndex = selectedIndex
        }

      }
    }

    VisualItemModel {
      id: tabs

      Item {
        id: generalPage
        width: tabView.width
        height: tabView.height

        Scrollbar {
          z: 1
          id: scrollGeneral
          visible: true
          flickableItem: flickGeneral
          align: Qt.AlignTrailing
        }

        Flickable {
          id: flickGeneral
          anchors {
            fill: parent
            margins: units.gu(1)
          }
          contentWidth: generalColumn.width
          contentHeight: generalColumn.height

          Column {
            id: generalColumn
            spacing: units.gu(1)
            width: parent.parent.width

            /* # */


            Label {
              text: "#"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* # */

            SoundButton {
              width: parent.width
              color: "#E9A3BE"
              text: ("20 Percent Cooler")
              soundSource: "mp/20percentcooler.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#6e2d0f"
              text: ("88 MPH")
              soundSource: "mp/88mph.ogg"
            }

            /* A */


            Label {
              text: "A"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* A */

            SoundButton {
              width: parent.width
              color: "#5AC69E"
              text: ("Adventure Time")
              soundSource: "mp/adventuretime.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#77216F"
              text: ("Afro Circus")
              soundSource: "mp/afrocircus.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#4d6d81"
              text: ("Ain't Nobody Got Time For That")
              soundSource: "mp/aintnobodygottimeforthat.ogg"
            }

            SoundButton {
              width: parent.width
              color: "green"
              text: ("Airhorn")
              soundSource: "mp/airhorn.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#BB7C0B"
              text: ("An Enemy")
              soundSource: "mp/anenemy.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#FFB90F"
              text: ("Applause")
              soundSource: "mp/applause.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#DD4814"
              text: ("A-Team")
              soundSource: "mp/ateam.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#74744E"
              text: ("Aww")
              soundSource: "mp/aww.ogg"
            }

            /* B */


            Label {
              text: "B"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* B */

            SoundButton {
              width: parent.width
              color: "#E3170D"
              text: ("Bad Boys")
              soundSource: "mp/badboys.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#CB5E44"
              text: ("Ba Dum Tss")
              soundSource: "mp/badumtss.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#170B35"
              text: ("Bang")
              soundSource: "mp/bang.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#FD67DF"
              text: ("Barbie Girl")
              soundSource: "mp/barbiegirl.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#00CED1"
              text: ("Batman Transition")
              soundSource: "mp/batmantransition.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#AADD00"
              text: ("Benny Hill")
              soundSource: "mp/bennyhill.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#00a397"
              text: ("Bond")
              soundSource: "mp/bond.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#E75C33"
              text: ("Burp")
              soundSource: "mp/burp.ogg"
            }

            /* C */


            Label {
              text: "C"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* C */

            SoundButton {
              width: parent.width
              color: "#ff5252"
              text: ("Can't touch this")
              soundSource: "mp/canttouchthis.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#9e9d24"
              text: ("Car Key")
              soundSource: "mp/carkey.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#2b92de"
              text: ("Cash Register")
              soundSource: "mp/cashregister.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#1d77ef"
              text: ("Celebration")
              soundSource: "mp/celebration.ogg"
            }

            /* D */


            Label {
              text: "D"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* D */

            SoundButton {
              width: parent.width
              color: "#4238F4"
              text: ("Damn Son!")
              soundSource: "mp/damnson.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#D9E535"
              text: ("Denied")
              soundSource: "mp/denied.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#2E1B4D"
              text: ("Derp")
              soundSource: "mp/derp.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#65e732"
              text: ("Dial-up")
              soundSource: "mp/dialup.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#935c5b"
              text: ("Donald Duck Angry")
              soundSource: "mp/donaldduckangry.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#bf2546"
              text: ("Doorbell")
              soundSource: "mp/doorbell.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#8b00b5"
              text: ("Door Knocking")
              soundSource: "mp/doorknocking.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#0a380f"
              text: ("Dun Dun Duuuun")
              soundSource: "mp/dundunduuuun.ogg"
            }

            /* E */


            Label {
              text: "E"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* E */

            SoundButton {
              width: parent.width
              color: "#a49f96"
              text: ("Easy")
              soundSource: "mp/easy.ogg"
            }

            /* F */


            Label {
              text: "F"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* F */

            SoundButton {
              width: parent.width
              color: "#71590C"
              text: ("Fart")
              soundSource: "mp/fart.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#FF9933"
              text: ("Flashback")
              soundSource: "mp/flashback.ogg"
            }

            /* G */


            Label {
              text: "G"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* G */

            SoundButton {
              width: parent.width
              color: "#ACC0C6"
              text: ("Ghostbusters")
              soundSource: "mp/ghostbusters.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#5E2605"
              text: ("Giggity")
              soundSource: "mp/giggity.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#836321"
              text: ("Glass Breaking")
              soundSource: "mp/glassbreaking.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#FF1300"
              text: ("Grade Crossing")
              soundSource: "mp/gradecrossing.ogg"
            }

            /* H */


            Label {
              text: "H"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* H */

            SoundButton {
              width: parent.width
              color: "#ffc23c"
              text: ("Ha, gay")
              soundSource: "mp/hagay.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#754719"
              text: ("Here We Go!")
              soundSource: "mp/herewego.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#f73187"
              text: ("Hot Hot Hot")
              soundSource: "mp/hothothot.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#2E21AC"
              text: ("Hu Waa Waa")
              soundSource: "mp/huwaawaa.ogg"
            }

            /* I */


            Label {
              text: "I"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* I */

            SoundButton {
              width: parent.width
              color: "#24805f"
              text: ("Illuminati Confirmed")
              soundSource: "mp/illuminaticonfirmed.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#A6069A"
              text: ("It Was At This Moment")
              soundSource: "mp/itwasatthismoment.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#7b9095"
              text: ("I've Got Balls Of Steel")
              soundSource: "mp/ivegotballsofsteel.ogg"
            }

            /* J */


            Label {
              text: "J"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* J */

            SoundButton {
              width: parent.width
              color: "#0ebe13"
              text: ("John Cena")
              soundSource: "mp/johncena.ogg"
            }

            /* K */


            Label {
              text: "K"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* K */

            SoundButton {
              width: parent.width
              color: "#71948d"
              text: ("Knight Rider")
              soundSource: "mp/knightrider.ogg"
            }

            /* L */


            Label {
              text: "L"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* L */

            SoundButton {
              width: parent.width
              color: "#000099"
              text: ("Laugh")
              soundSource: "mp/laugh.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#FFA07A"
              text: ("Leeroy Jenkins")
              soundSource: "mp/leeroyjenkins.ogg"
            }

            /* M */


            Label {
              text: "M"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* M */

            SoundButton {
              width: parent.width
              color: "#8da03f"
              text: ("Magic Wand")
              soundSource: "mp/magicwand.ogg"
            }

            /* N */


            Label {
              text: "N"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* N */

            SoundButton {
              width: parent.width
              color: "#ce9546"
              text: ("No Connection")
              soundSource: "mp/noconnection.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#44dabf"
              text: ("Nokia")
              soundSource: "mp/nokia.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#D34E25"
              text: ("Nope")
              soundSource: "mp/nope.ogg"
            }

            /* P */


            Label {
              text: "P"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* P */

            SoundButton {
              width: parent.width
              color: "#A8C5A8"
              text: ("Pewdiepie")
              soundSource: "mp/pewdiepie.ogg"
            }

            /* R */


            Label {
              text: "R"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* R */

            SoundButton {
              width: parent.width
              color: "#450600"
              text: ("Really Nigga")
              soundSource: "mp/reallynigga.ogg"
            }

            /* S */


            Label {
              text: "S"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* S */

            SoundButton {
              width: parent.width
              color: "#BAADB3"
              text: ("Sad Violin")
              soundSource: "mp/sadviolin.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#ab5980"
              text: ("Screw You Guys")
              soundSource: "mp/screwyouguys.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#b18a63"
              text: ("Sega")
              soundSource: "mp/sega.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#e32e6d"
              text: ("Shotgun")
              soundSource: "mp/shotgun.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#12A5F4"
              text: ("Skype")
              soundSource: "mp/skype.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#4B5080"
              text: ("Smoke Weed Every Day")
              soundSource: "mp/smokeweedeveryday.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#03C745"
              text: ("Sonic Ring")
              soundSource: "mp/sonicring.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#9B0D3D"
              text: ("Spooky Scary Skeleton")
              soundSource: "mp/spookyscaryskeleton.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#A5C023"
              text: ("Sudden Impact")
              soundSource: "mp/suddenimpact.ogg"
            }

            /* T */


            Label {
              text: "T"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* T */

            SoundButton {
              width: parent.width
              color: "#04e5b0"
              text: ("Tadaah")
              soundSource: "mp/tadaah.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#0A1428"
              text: ("Tape Rewind")
              soundSource: "mp/taperewind.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#D6D382"
              text: ("That's Racist")
              soundSource: "mp/thatsracist.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#FD69D9"
              text: ("That's What She Said!")
              soundSource: "mp/thatswhatshesaid.ogg"
            }

            SoundButton {
              width: parent.width
              color: "pink"
              text: ("The Shell Knows All")
              soundSource: "mp/theshellknowsall.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#FFD700"
              text: ("Thug Life")
              soundSource: "mp/thuglife.ogg"
            }

            /* W */


            Label {
              text: "W"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* W */

            SoundButton {
              width: parent.width
              color: "#3B2F81"
              text: ("Water Splash")
              soundSource: "mp/watersplash.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#ff2e8a06"
              text: ("Whatsapp")
              soundSource: "mp/whatsapp.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#f29dae"
              text: ("Who Let The Dogs Out")
              soundSource: "mp/wholetthedogsout.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#ffc2db00"
              text: ("Whoosh")
              soundSource: "mp/whoosh.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#43C6DB"
              text: ("Windows XP Error")
              soundSource: "mp/windowsxperror.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#393b4e"
              text: ("Woohoo")
              soundSource: "mp/woohoo.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#000080"
              text: ("Woop Woop That's Da Sound Of The Police")
              soundSource: "mp/woopwoopthatsdasoundofthepolice.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#DB5844"
              text: ("Wow")
              soundSource: "mp/wow.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#1A5E0A"
              text: ("Wrong")
              soundSource: "mp/wrong.ogg"
            }

            /* Y */


            Label {
              text: "Y"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* Y */

            SoundButton {
              width: parent.width
              color: "#E5C556"
              text: ("Yay")
              soundSource: "mp/yay.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#06f9b0"
              text: ("You Think You're Safe You're Not")
              soundSource: "mp/youthinkyouresafeyourenot.ogg"
            }

            /* END */

          }
        }
      }

      Item {
        id: moviePage
        width: tabView.width
        height: tabView.height

        Scrollbar {
          z: 1
          id: scrollMovie
          visible: true
          flickableItem: flickMovie
          align: Qt.AlignTrailing
        }

        Flickable {
          id: flickMovie
          anchors {
            fill: parent
            margins: units.gu(1)
          }
          contentWidth: movieColumn.width
          contentHeight: movieColumn.height

          Column {
            id: movieColumn
            width: parent.parent.width
            spacing: units.gu(1)

            /* # */


            Label {
              text: "#"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* # */

            SoundButton {
              width: parent.width
              color: "#6e2d0f"
              text: ("88 MPH")
              soundSource: "mp/88mph.ogg"
            }


            /* A */


            Label {
              text: "A"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* A */

            SoundButton {
              width: parent.width
              color: "#77216F"
              text: ("Afro Circus")
              soundSource: "mp/afrocircus.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#DD4814"
              text: ("A-Team")
              soundSource: "mp/ateam.ogg"
            }

            /* B */

            Label {
              text: "B"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* B */

            SoundButton {
              width: parent.width
              color: "#00CED1"
              text: ("Batman Transition")
              soundSource: "mp/batmantransition.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#AADD00"
              text: ("Benny Hill")
              soundSource: "mp/bennyhill.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#00a397"
              text: ("Bond")
              soundSource: "mp/bond.ogg"
            }

            /* G */

            Label {
              text: "G"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* G */

            SoundButton {
              width: parent.width
              color: "#ACC0C6"
              text: ("Ghostbusters")
              soundSource: "mp/ghostbusters.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#5E2605"
              text: ("Giggity")
              soundSource: "mp/giggity.ogg"
            }

            /* K */

            Label {
              text: "K"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* K */

            SoundButton {
              width: parent.width
              color: "#71948d"
              text: ("Knight Rider")
              soundSource: "mp/knightrider.ogg"
            }

            /* L */

            Label {
              text: "L"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* L */

            SoundButton {
              width: parent.width
              color: "#27b249"
              text: ("Light Saber")
              soundSource: "mp/lightsaber.ogg"
            }

            /* S */

            Label {
              text: "S"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* S */

            SoundButton {
              width: parent.width
              color: "#d5c139"
              text: ("Star Wars - Chewbacca")
              soundSource: "mp/chewbacca.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#6e9349"
              text: ("Star Wars - Darth Vader Breathing")
              soundSource: "mp/darthvaderbreathing.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#92c3cc"
              text: ("Star Wars - R2")
              soundSource: "mp/r2.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#080102"
              text: ("Star Wars - TIE Fighter")
              soundSource: "mp/tiefighter.ogg"
            }

            /* Y */


            Label {
              text: "Y"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* Y */

            SoundButton {
              width: parent.width
              color: "#06f9b0"
              text: ("You Think You're Safe You're Not")
              soundSource: "mp/youthinkyouresafeyourenot.ogg"
            }

            /* EMPTY */


            Label {
              text: " "
              color: theme.palette.normal.baseText
            }

            /* EMPTY */

            /* MOVIE STUDIOS */


            Label {
              text: "Movie Studio's"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* MOVIE STUDIOS */

            /* # */


            Label {
              text: "#"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* # */

            SoundButton {
              width: parent.width
              color: "#bb29b3"
              text: ("20th Century Fox")
              soundSource: "mp/20thcenturyfox.ogg"
            }


            /* C */


            Label {
              text: "C"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* C */

            SoundButton {
              width: parent.width
              color: "#215533"
              text: ("Columbia Pictures")
              soundSource: "mp/columbiapictures.ogg"
            }

            /* D */


            Label {
              text: "D"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* D */

            SoundButton {
              width: parent.width
              color: "#03bbe2"
              text: ("Dreamworks")
              soundSource: "mp/dreamworks.ogg"
            }

            /* M */


            Label {
              text: "M"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* M */

            SoundButton {
              width: parent.width
              color: "#ce6929"
              text: ("Metro Gold Wynmayer")
              soundSource: "mp/metrogoldwynmayer.ogg"
            }

            /* N */


            Label {
              text: "N"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* N */

            SoundButton {
              width: parent.width
              color: "#5d4c7c"
              text: ("New Line Cinema")
              soundSource: "mp/newlinecinema.ogg"
            }

            /* P */


            Label {
              text: "P"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* P */

            SoundButton {
              width: parent.width
              color: "#287f7f"
              text: ("Paramount Pictures")
              soundSource: "mp/paramountpictures.ogg"
            }

            /* U */


            Label {
              text: "U"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* U */

            SoundButton {
              width: parent.width
              color: "#3c84a4"
              text: ("Universal Pictures")
              soundSource: "mp/universalpictures.ogg"
            }

            /* W */


            Label {
              text: "W"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* W */

            SoundButton {
              width: parent.width
              color: "#cb945c"
              text: ("Warner Bros")
              soundSource: "mp/warnerbros.ogg"
            }

            /* END */

          }
        }
      }

      Item {
        id: gamePage
        width: tabView.width
        height: tabView.height

        Scrollbar {
          z: 1
          id: scrollGame
          visible: true
          flickableItem: flickGame
          align: Qt.AlignTrailing
        }

        Flickable {
          id: flickGame
          anchors {
            fill: parent
            margins: units.gu(1)
          }
          contentWidth: gameColumn.width
          contentHeight: gameColumn.height

          Column {
            id: gameColumn
            width: parent.parent.width
            spacing: units.gu(1)

            /* A */


            Label {
              text: "A"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* A */

            SoundButton {
              width: parent.width
              color: "#BB7C0B"
              text: ("An Enemy")
              soundSource: "mp/anenemy.ogg"
            }

            /* D */


            Label {
              text: "D"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* D */

            SoundButton {
              width: parent.width
              color: "#D9E535"
              text: ("Denied")
              soundSource: "mp/denied.ogg"
            }

            /* F */


            Label {
              text: "F"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* F */

            SoundButton {
              width: parent.width
              color: "#911653"
              text: ("Fatality")
              soundSource: "mp/fatality.ogg"
            }

            /* G */


            Label {
              text: "G"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* G */

            SoundButton {
              width: parent.width
              color: "#b373f8"
              text: ("GTA 3 - Mission Complete")
              soundSource: "mp/gta3missioncomplete.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#441f43"
              text: ("GTA SA - Mission Complete")
              soundSource: "mp/gtasamissioncomplete.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#2c850f"
              text: ("GTA VC - Mission Complete")
              soundSource: "mp/gtavcmissioncomplete.ogg"
            }

            /* H */


            Label {
              text: "H"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* H */

            SoundButton {
              width: parent.width
              color: "#3d84d0"
              text: ("Hadouken")
              soundSource: "mp/hadouken.ogg"
            }

            /* I */


            Label {
              text: "I"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* I */

            SoundButton {
              width: parent.width
              color: "#7b9095"
              text: ("I've Got Balls Of Steel")
              soundSource: "mp/ivegotballsofsteel.ogg"
            }

            /* L */


            Label {
              text: "L"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* L */

            SoundButton {
              width: parent.width
              color: "#FFA07A"
              text: ("Leeroy Jenkins")
              soundSource: "mp/leeroyjenkins.ogg"
            }

            /* M */


            Label {
              text: "M"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* M */

            SoundButton {
              width: parent.width
              color: "#1f1af2"
              text: ("Mario - 1 Up")
              soundSource: "mp/mario1up.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#b42e4d"
              text: ("Mario - Game Over")
              soundSource: "mp/mariogameover.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#754719"
              text: ("Mario - Here We Go!")
              soundSource: "mp/herewego.ogg"
            }

            /* P */


            Label {
              text: "P"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* P */

            SoundButton {
              width: parent.width
              color: "#8a5940"
              text: ("Pacman - Game Over")
              soundSource: "mp/pacmangameover.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#11adf3"
              text: ("Pacman - Waka Waka")
              soundSource: "mp/pacmanwakawaka.ogg"
            }

            /* S */


            Label {
              text: "S"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* S */

            SoundButton {
              width: parent.width
              color: "#b18a63"
              text: ("Sega")
              soundSource: "mp/sega.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#7162ba"
              text: ("Shoryuken")
              soundSource: "mp/shoryuken.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#03C745"
              text: ("Sonic Ring")
              soundSource: "mp/sonicring.ogg"
            }

            /* T */


            Label {
              text: "T"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* T */

            SoundButton {
              width: parent.width
              color: "#0d9262"
              text: ("Tetris")
              soundSource: "mp/tetris.ogg"
            }

            /* END */

          }
        }
      }


      Item {
        id: ringtonePage
        width: tabView.width
        height: tabView.height

        Scrollbar {
          z: 1
          id: ringtoneRingtone
          visible: true
          flickableItem: flickRingtone
          align: Qt.AlignTrailing
        }

        Flickable {
          id: flickRingtone
          anchors {
            fill: parent
            margins: units.gu(1)
          }
          contentWidth: ringtoneColumn.width
          contentHeight: ringtoneColumn.height

          Column {
            id: ringtoneColumn
            width: parent.parent.width
            spacing: units.gu(1)

            /* A */


            Label {
              text: "A"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* A */

            SoundButton {
              width: parent.width
              color: "#3a6266"
              text: ("AT&T")
              soundSource: "mp/at&t.ogg"
            }

            /* B */


            Label {
              text: "B"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* B */

            SoundButton {
              width: parent.width
              color: "#8e22e7"
              text: ("Blackberry")
              soundSource: "mp/blackberry.ogg"
            }

            /* I */


            Label {
              text: "I"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* I */

            SoundButton {
              width: parent.width
              color: "#1784e4"
              text: ("iPhone - Marimba")
              soundSource: "mp/iphonemarimba.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#a5dd7b"
              text: ("iPhone - Xylophone")
              soundSource: "mp/iphonexylophone.ogg"
            }

            /* N */


            Label {
              text: "N"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* N */

            SoundButton {
              width: parent.width
              color: "#5b0c27"
              text: ("Nokia")
              soundSource: "mp/nokia.ogg"
            }

            /* S */


            Label {
              text: "S"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* S */

            SoundButton {
              width: parent.width
              color: "#fdbe64"
              text: ("Samsung - Over The Horizon")
              soundSource: "mp/samsungoverthehorizon.ogg"
            }

            SoundButton {
              width: parent.width
              color: "#bd6494"
              text: ("Sony Ericsson")
              soundSource: "mp/sonyericsson.ogg"
            }

            /* T */


            Label {
              text: "T"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* T */

            SoundButton {
              width: parent.width
              color: "#012d0c"
              text: ("T-Mobile")
              soundSource: "mp/tmobile.ogg"
            }

            /* V */


            Label {
              text: "V"
              color: theme.palette.normal.baseText
              textSize: Label.Large
            }

            /* V */

            SoundButton {
              width: parent.width
              color: "#b190ba"
              text: ("Verizon")
              soundSource: "mp/verizon.ogg"
            }

            /* END */

          }
        }
      }
    }


    ListView {
      id: tabView
      anchors {
        top: mainPage.header.bottom
        bottom: parent.bottom
        left: parent.left
        right: parent.right
      }
      model: tabs
      currentIndex: 0

      orientation: Qt.Horizontal
      snapMode: ListView.SnapOneItem
      highlightRangeMode: ListView.StrictlyEnforceRange
      highlightMoveDuration: UbuntuAnimation.FastDuration

      onCurrentIndexChanged: {
        sections.selectedIndex = currentIndex
      }

    }
  }

  Component {
    id: aboutDialog
    Dialog {
      signal closed();
      id: dialogue
      title: qsTr("About Soundboard")

      Label {
        width: parent.width
        wrapMode: Text.Wrap
        color: "black"
        text: qsTr('Soundboard is a simple soundboard app for Ubuntu Touch. The sounds are in alphabetical order.')+' More sounds are coming!<p>&nbsp;</p>Have you found a bug or do you have ideas for new sounds? Please open an issue on GitHub or send me a message on Telegram. <p>&nbsp;</p><font color="grey">I do not own the rights to any of these sounds. All the rights belong to the original owners of the sounds.</font></p>';
      }

      Label {
        linkColor: UbuntuColors.orange
        color: "black"
        width: parent.width
        wrapMode: Text.Wrap
        text: qsTr("Author: Sander Klootwijk")+"<br/>"+qsTr('Telegram: <a href="https://www.t.me/SanderKlootwijk">@SanderKlootwijk</a>')+"<br/>"+qsTr('License: <a href="https://www.gnu.org/licenses/gpl.html">GNU GPL v3</a>')+"<br/>"+qsTr('Source Code: <a href="https://github.com/SanderKlootwijk/Soundboard">Github</a>')
        onLinkActivated: Qt.openUrlExternally(link)
      }

      Button {
        width: parent.width
        id: ok
        text: qsTr("Close")

        onClicked: {
          PopupUtils.close(dialogue);
          closed();
        }
      }
    }
  }
}
