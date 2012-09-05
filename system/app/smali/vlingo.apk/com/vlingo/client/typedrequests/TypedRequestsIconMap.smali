.class public Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;
.super Ljava/lang/Object;
.source "TypedRequestsIconMap.java"


# static fields
.field public static final ICON_CALL:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837504"

.field public static final ICON_CAR_MODE:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837624"

.field public static final ICON_CONTACT_NO_PIC:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837664"

.field public static final ICON_DEFAULT:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837688"

.field public static final ICON_EMAIL:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837505"

.field public static final ICON_FACEBOOK:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837516"

.field public static final ICON_FOURSQUARE:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837516"

.field public static final ICON_HELP:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837506"

.field public static final ICON_HOTEL:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837507"

.field public static final ICON_LOCAL_SEARCH:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837508"

.field public static final ICON_MAP:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837509"

.field public static final ICON_MOVIE_TICKETS:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837510"

.field public static final ICON_NAVIGATE:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837511"

.field public static final ICON_QUESTIONS:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837512"

.field public static final ICON_REPLY:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837513"

.field public static final ICON_ROOT:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/"

.field public static final ICON_SAFEREADER:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837517"

.field public static final ICON_SAFEREADER_OFF:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837518"

.field public static final ICON_SAFEREADER_ON:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837517"

.field public static final ICON_SMS:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837515"

.field public static final ICON_SOCIAL:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837516"

.field public static final ICON_TWITTER:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837516"

.field public static final ICON_WEATHER:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837519"

.field public static final ICON_WEB:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837514"

.field public static final ICON_WEB_SEARCH:Ljava/lang/String; = "android.resource://com.vlingo.client.samsung/2130837514"

.field private static final parseTypeMap:[Ljava/lang/String;


# instance fields
.field private final localImageMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    const/16 v0, 0xaa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "adr:open"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "alarm:open"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "androidmkt:open"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "biztagging:def"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837508"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bmaps:open"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "brickbreaker:open"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "browser:open"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calc:open"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "calllog:open"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "cal:open"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "camcorder:open"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "camera:open"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "carhome:open"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837624"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "carmode:start"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837624"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "clock:open"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "date:current"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837512"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "dial:biz"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837504"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "dial:contact"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837504"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "dial:def"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837504"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "dialer:open"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837504"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "email:def"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837505"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "email:open"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837505"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "facebook:open"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837516"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "facebook:status"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837516"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "familymap:open"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "files:open"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "foursquare:checkin"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837516"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "foursquare:friends"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837516"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "foursquare:shout"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837516"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "game:open"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "gmail:open"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "gmaps:open"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "goggles:open"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "gtalk:open"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "hotel:def"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837507"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "im:open"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "localsearch:cat"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837508"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "localsearch:def"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837508"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "location:current"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837512"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "map:def"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837509"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "maps:open"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "media:open"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "memo:open"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "messenger:open"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "movie:tickets"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837510"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "msg:reply"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837513"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "msgs:open"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "music:open"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "musicstore:open"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "name:only"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837664"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "nav:def"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837511"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "nav:open"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "news:open"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "opera:open"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "options:open"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "pandora:open"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "phoneportal:open"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "podcast:open"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "question:def"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837512"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "radio:open"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "readback:disable"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837518"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "readback:enable"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837517"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "readback:open"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837517"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "sms:def"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837515"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "sms:open"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "social:def"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837516"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "sync:open"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "task:open"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "tellafriend:def"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837516"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "time:current"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837512"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "twitter:def"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837516"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "unknown:def"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837688"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "viigo:open"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "vlingo:open"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "voicesearch:open"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "vrecorder:open"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "wcis:def"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837506"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "weather:lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837519"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "weather:open"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837519"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "web:url"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837514"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "wsearch:def"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837514"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "wsearch:google"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837514"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "wsearch:yahoo"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "android.resource://com.vlingo.client.samsung/2130837514"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "youtube:open"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "ypmobile:open"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;->parseTypeMap:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;->localImageMap:Ljava/util/Hashtable;

    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    sget-object v3, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;->parseTypeMap:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3d

    .line 160
    sget-object v3, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;->parseTypeMap:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, parseTypes:[Ljava/lang/String;
    sget-object v3, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;->parseTypeMap:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v1, v3, v4

    .line 162
    .local v1, icon:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_31

    .line 163
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;->localImageMap:Ljava/util/Hashtable;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, 0x2

    goto :goto_b

    .line 166
    :cond_31
    const-string v3, "open"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2e

    .line 171
    .end local v1           #icon:Ljava/lang/String;
    .end local v2           #parseTypes:[Ljava/lang/String;
    :cond_3d
    return-void
.end method


# virtual methods
.method public getIcon(Lcom/vlingo/client/typedrequests/provider/Suggestion;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->getParseType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;->getIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "image"

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-static {p1}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 179
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 194
    .end local p1
    :cond_f
    :goto_f
    return-object p1

    .line 182
    .restart local p1
    :cond_10
    const-string v1, "android.resource://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 185
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;->localImageMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 186
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;->localImageMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object p1, v1

    goto :goto_f

    .line 188
    :cond_2a
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, parseType:[Ljava/lang/String;
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;->localImageMap:Ljava/util/Hashtable;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 190
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;->localImageMap:Ljava/util/Hashtable;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object p1, v1

    goto :goto_f

    .line 194
    .end local v0           #parseType:[Ljava/lang/String;
    :cond_46
    const-string p1, "android.resource://com.vlingo.client.samsung/2130837688"

    goto :goto_f
.end method
