.class public Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;
.super Ljava/lang/Object;
.source "AxT9HWKeyMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;
    }
.end annotation


# static fields
.field public static final HWKEY_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

.field private static final INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;

.field private static final mGreekChar:[I

.field private static mGreekList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mKeyCodes:[I

.field private static mUmlautMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mUmlautSymbol:[I

.field private static mUmlautSymbolList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mUmlautTable:[[I


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final INFO:Z

.field private mKeyInfoHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    .line 36
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_6e72

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautSymbol:[I

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_6e92

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mGreekChar:[I

    .line 38
    const/16 v0, 0x20d

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6ea4

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6eb2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6ec0

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6ece

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6edc

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6eea

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6ef8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6f06

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6f14

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6f22

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6f30

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6f3e

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6f4c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6f5a

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6f68

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6f76

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6f84

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6f92

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6fa0

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6fae

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6fbc

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6fca

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6fd8

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6fe6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_6ff4

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7002

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7010

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_701e

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_702c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_703a

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7048

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7056

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7064

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7072

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7080

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_708e

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_709c

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_70aa

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_70b8

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_70c6

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_70d4

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_70e2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_70f0

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_70fe

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_710c

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_711a

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7128

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7136

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7144

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7152

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7160

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_716e

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_717c

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_718a

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7198

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_71a6

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_71b4

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_71c2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_71d0

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_71de

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_71ec

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_71fa

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7208

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7216

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7224

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7232

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7240

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_724e

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_725c

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_726a

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7278

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7286

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7294

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_72a2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_72b0

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_72be

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_72cc

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_72da

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_72e8

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_72f6

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7304

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7312

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7320

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_732e

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_733c

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_734a

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7358

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7366

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7374

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7382

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7390

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_739e

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_73ac

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_73ba

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_73c8

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_73d6

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_73e4

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_73f2

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7400

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_740e

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_741c

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_742a

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7438

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7446

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7454

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7462

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7470

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_747e

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_748c

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_749a

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_74a8

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_74b6

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_74c4

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_74d2

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_74e0

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_74ee

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_74fc

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_750a

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7518

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7526

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7534

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7542

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7550

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_755e

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_756c

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_757a

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7588

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7596

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_75a4

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_75b2

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_75c0

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_75ce

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_75dc

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_75ea

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_75f8

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7606

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7614

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7622

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7630

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_763e

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_764c

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_765a

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7668

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7676

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7684

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7692

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_76a0

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_76ae

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_76bc

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_76ca

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_76d8

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_76e6

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_76f4

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7702

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7710

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_771e

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_772c

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_773a

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7748

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7756

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7764

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7772

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7780

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_778e

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_779c

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_77aa

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_77b8

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_77c6

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_77d4

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_77e2

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_77f0

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_77fe

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_780c

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_781a

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7828

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7836

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7844

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7852

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7860

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_786e

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_787c

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_788a

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7898

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_78a6

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_78b4

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_78c2

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_78d0

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_78de

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_78ec

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_78fa

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7908

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7916

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7924

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7932

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7940

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_794e

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_795c

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_796a

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7978

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7986

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7994

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_79a2

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_79b0

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_79be

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_79cc

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_79da

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_79e8

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_79f6

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7a04

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7a12

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7a20

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7a2e

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7a3c

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7a4a

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7a58

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7a66

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7a74

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7a82

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7a90

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7a9e

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7aac

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7aba

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7ac8

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7ad6

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7ae4

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7af2

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7b00

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7b0e

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7b1c

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7b2a

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7b38

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7b46

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7b54

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7b62

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7b70

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7b7e

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7b8c

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7b9a

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7ba8

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7bb6

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7bc4

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7bd2

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7be0

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7bee

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7bfc

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7c0a

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7c18

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7c26

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7c34

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7c42

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7c50

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7c5e

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7c6c

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7c7a

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7c88

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7c96

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7ca4

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7cb2

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7cc0

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7cce

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7cdc

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7cea

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7cf8

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7d06

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7d14

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7d22

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7d30

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7d3e

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7d4c

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7d5a

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7d68

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7d76

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7d84

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7d92

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7da0

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7dae

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7dbc

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7dca

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7dd8

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7de6

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7df4

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7e02

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7e10

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7e1e

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7e2c

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7e3a

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7e48

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7e56

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7e64

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7e72

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7e80

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7e8e

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7e9c

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7eaa

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7eb8

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7ec6

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7ed4

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7ee2

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7ef0

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7efe

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7f0c

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7f1a

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7f28

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7f36

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7f44

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7f52

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7f60

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7f6e

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7f7c

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7f8a

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7f98

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7fa6

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7fb4

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7fc2

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7fd0

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7fde

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7fec

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_7ffa

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8008

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8016

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8024

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8032

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8040

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_804e

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_805c

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_806a

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8078

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8086

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8094

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_80a2

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_80b0

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_80be

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_80cc

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_80da

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_80e8

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_80f6

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8104

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8112

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8120

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_812e

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_813c

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_814a

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8158

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8166

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8174

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8182

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8190

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_819e

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_81ac

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_81ba

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_81c8

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_81d6

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_81e4

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_81f2

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8200

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_820e

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_821c

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_822a

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8238

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8246

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8254

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8262

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8270

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_827e

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_828c

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_829a

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_82a8

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_82b6

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_82c4

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_82d2

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_82e0

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_82ee

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_82fc

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_830a

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8318

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8326

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8334

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8342

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8350

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_835e

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_836c

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_837a

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8388

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8396

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_83a4

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_83b2

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_83c0

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_83ce

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_83dc

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_83ea

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_83f8

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8406

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8414

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8422

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8430

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_843e

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_844c

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_845a

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8468

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8476

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8484

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8492

    aput-object v2, v0, v1

    const/16 v1, 0x192

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_84a0

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_84ae

    aput-object v2, v0, v1

    const/16 v1, 0x194

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_84bc

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_84ca

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_84d8

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_84e6

    aput-object v2, v0, v1

    const/16 v1, 0x198

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_84f4

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8502

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8510

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_851e

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_852c

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_853a

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8548

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8556

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8564

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8572

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8580

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_858e

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_859c

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_85aa

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_85b8

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_85c6

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_85d4

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_85e2

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_85f0

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_85fe

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_860c

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_861a

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8628

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8636

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8644

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8652

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8660

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_866e

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_867c

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_868a

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8698

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_86a6

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_86b4

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_86c2

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_86d0

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_86de

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_86ec

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_86fa

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8708

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8716

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8724

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8732

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8740

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_874e

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_875c

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_876a

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8778

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8786

    aput-object v2, v0, v1

    const/16 v1, 0x1c8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8794

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_87a2

    aput-object v2, v0, v1

    const/16 v1, 0x1ca

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_87b0

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_87be

    aput-object v2, v0, v1

    const/16 v1, 0x1cc

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_87cc

    aput-object v2, v0, v1

    const/16 v1, 0x1cd

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_87da

    aput-object v2, v0, v1

    const/16 v1, 0x1ce

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_87e8

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_87f6

    aput-object v2, v0, v1

    const/16 v1, 0x1d0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8804

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8812

    aput-object v2, v0, v1

    const/16 v1, 0x1d2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8820

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_882e

    aput-object v2, v0, v1

    const/16 v1, 0x1d4

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_883c

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_884a

    aput-object v2, v0, v1

    const/16 v1, 0x1d6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8858

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8866

    aput-object v2, v0, v1

    const/16 v1, 0x1d8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8874

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8882

    aput-object v2, v0, v1

    const/16 v1, 0x1da

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8890

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_889e

    aput-object v2, v0, v1

    const/16 v1, 0x1dc

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_88ac

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_88ba

    aput-object v2, v0, v1

    const/16 v1, 0x1de

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_88c8

    aput-object v2, v0, v1

    const/16 v1, 0x1df

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_88d6

    aput-object v2, v0, v1

    const/16 v1, 0x1e0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_88e4

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_88f2

    aput-object v2, v0, v1

    const/16 v1, 0x1e2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8900

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_890e

    aput-object v2, v0, v1

    const/16 v1, 0x1e4

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_891c

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_892a

    aput-object v2, v0, v1

    const/16 v1, 0x1e6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8938

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8946

    aput-object v2, v0, v1

    const/16 v1, 0x1e8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8954

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8962

    aput-object v2, v0, v1

    const/16 v1, 0x1ea

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8970

    aput-object v2, v0, v1

    const/16 v1, 0x1eb

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_897e

    aput-object v2, v0, v1

    const/16 v1, 0x1ec

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_898c

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_899a

    aput-object v2, v0, v1

    const/16 v1, 0x1ee

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_89a8

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_89b6

    aput-object v2, v0, v1

    const/16 v1, 0x1f0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_89c4

    aput-object v2, v0, v1

    const/16 v1, 0x1f1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_89d2

    aput-object v2, v0, v1

    const/16 v1, 0x1f2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_89e0

    aput-object v2, v0, v1

    const/16 v1, 0x1f3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_89ee

    aput-object v2, v0, v1

    const/16 v1, 0x1f4

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_89fc

    aput-object v2, v0, v1

    const/16 v1, 0x1f5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8a0a

    aput-object v2, v0, v1

    const/16 v1, 0x1f6

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8a18

    aput-object v2, v0, v1

    const/16 v1, 0x1f7

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8a26

    aput-object v2, v0, v1

    const/16 v1, 0x1f8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8a34

    aput-object v2, v0, v1

    const/16 v1, 0x1f9

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8a42

    aput-object v2, v0, v1

    const/16 v1, 0x1fa

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8a50

    aput-object v2, v0, v1

    const/16 v1, 0x1fb

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8a5e

    aput-object v2, v0, v1

    const/16 v1, 0x1fc

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8a6c

    aput-object v2, v0, v1

    const/16 v1, 0x1fd

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8a7a

    aput-object v2, v0, v1

    const/16 v1, 0x1fe

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8a88

    aput-object v2, v0, v1

    const/16 v1, 0x1ff

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8a96

    aput-object v2, v0, v1

    const/16 v1, 0x200

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8aa4

    aput-object v2, v0, v1

    const/16 v1, 0x201

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8ab2

    aput-object v2, v0, v1

    const/16 v1, 0x202

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8ac0

    aput-object v2, v0, v1

    const/16 v1, 0x203

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8ace

    aput-object v2, v0, v1

    const/16 v1, 0x204

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8adc

    aput-object v2, v0, v1

    const/16 v1, 0x205

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8aea

    aput-object v2, v0, v1

    const/16 v1, 0x206

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8af8

    aput-object v2, v0, v1

    const/16 v1, 0x207

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8b06

    aput-object v2, v0, v1

    const/16 v1, 0x208

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8b14

    aput-object v2, v0, v1

    const/16 v1, 0x209

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8b22

    aput-object v2, v0, v1

    const/16 v1, 0x20a

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8b30

    aput-object v2, v0, v1

    const/16 v1, 0x20b

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8b3e

    aput-object v2, v0, v1

    const/16 v1, 0x20c

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8b4c

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautTable:[[I

    .line 704
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautSymbolList:Ljava/util/HashSet;

    .line 705
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mGreekList:Ljava/util/HashSet;

    .line 706
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautMap:Ljava/util/HashMap;

    .line 709
    const/4 v8, 0x0

    .line 711
    .local v8, idx:I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautSymbolList:Ljava/util/HashSet;

    .line 712
    const/4 v8, 0x0

    :goto_14a3
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautSymbol:[I

    array-length v0, v0

    if-ge v8, v0, :cond_14b8

    .line 713
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautSymbolList:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautSymbol:[I

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 712
    add-int/lit8 v8, v8, 0x1

    goto :goto_14a3

    .line 716
    :cond_14b8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mGreekList:Ljava/util/HashSet;

    .line 717
    const/4 v8, 0x0

    :goto_14c0
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mGreekChar:[I

    array-length v0, v0

    if-ge v8, v0, :cond_14d5

    .line 718
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mGreekList:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mGreekChar:[I

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 717
    add-int/lit8 v8, v8, 0x1

    goto :goto_14c0

    .line 721
    :cond_14d5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautMap:Ljava/util/HashMap;

    .line 723
    const/4 v8, 0x0

    :goto_14dd
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautTable:[[I

    array-length v0, v0

    if-ge v8, v0, :cond_1536

    .line 724
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautMap:Ljava/util/HashMap;

    const-string v1, "0x%02x0x%02x0x%04x0x%04x"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautTable:[[I

    aget-object v4, v4, v8

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautTable:[[I

    aget-object v4, v4, v8

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautTable:[[I

    aget-object v4, v4, v8

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautTable:[[I

    aget-object v4, v4, v8

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautTable:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    add-int/lit8 v8, v8, 0x1

    goto :goto_14dd

    .line 795
    :cond_1536
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_8b5a

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    .line 835
    const/16 v0, 0x37a

    new-array v9, v0, [Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v10, 0x0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x60

    const/16 v5, 0xac

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0xa3

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x24

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x5e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/4 v10, 0x7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x26

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x2a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x28

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x29

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0x3d

    const/16 v5, 0x2b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x71

    const/16 v5, 0x71

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xe

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    const/16 v4, 0x77

    const/16 v5, 0x77

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xf

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0xe9

    const/16 v7, 0xc9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x10

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x10

    aget v3, v3, v4

    const/16 v4, 0x72

    const/16 v5, 0x72

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x11

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x11

    aget v3, v3, v4

    const/16 v4, 0x74

    const/16 v5, 0x74

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x12

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    const/16 v4, 0x79

    const/16 v5, 0x79

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x13

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, 0xfa

    const/16 v7, 0xda

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x14

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, 0xed

    const/16 v7, 0xcd

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x15

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, 0xf3

    const/16 v7, 0xd3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x16

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x16

    aget v3, v3, v4

    const/16 v4, 0x70

    const/16 v5, 0x70

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x17

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x5b

    const/16 v5, 0x7b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x18

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x5d

    const/16 v5, 0x7d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x19

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, 0xe1

    const/16 v7, 0xc1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1a

    aget v3, v3, v4

    const/16 v4, 0x73

    const/16 v5, 0x73

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    const/16 v4, 0x64

    const/16 v5, 0x64

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1c

    aget v3, v3, v4

    const/16 v4, 0x66

    const/16 v5, 0x66

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1d

    aget v3, v3, v4

    const/16 v4, 0x67

    const/16 v5, 0x67

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1e

    aget v3, v3, v4

    const/16 v4, 0x68

    const/16 v5, 0x68

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    const/16 v4, 0x6a

    const/16 v5, 0x6a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x20

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x20

    aget v3, v3, v4

    const/16 v4, 0x6b

    const/16 v5, 0x6b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x21

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x21

    aget v3, v3, v4

    const/16 v4, 0x6c

    const/16 v5, 0x6c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x22

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0x3b

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x23

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x40

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x24

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x23

    const/16 v5, 0x7e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x25

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x5c

    const/16 v5, 0x7c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x26

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x26

    aget v3, v3, v4

    const/16 v4, 0x7a

    const/16 v5, 0x7a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x27

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    const/16 v4, 0x78

    const/16 v5, 0x78

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x28

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x28

    aget v3, v3, v4

    const/16 v4, 0x63

    const/16 v5, 0x63

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x29

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x29

    aget v3, v3, v4

    const/16 v4, 0x76

    const/16 v5, 0x76

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2a

    aget v3, v3, v4

    const/16 v4, 0x62

    const/16 v5, 0x62

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x6d

    const/16 v5, 0x6d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2f

    const/16 v5, 0x3f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x30

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x60

    const/16 v5, 0x7e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x31

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x32

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x40

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x33

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x34

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x24

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x35

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x36

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x5e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x37

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x26

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x38

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x2a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x39

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x28

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x3a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x29

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x3b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x3c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0x3d

    const/16 v5, 0x2b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x3d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x3e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x3f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x40

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x41

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x5b

    const/16 v5, 0x7b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x42

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x5d

    const/16 v5, 0x7d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x43

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x44

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0x3b

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x45

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x22

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x46

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x47

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x5c

    const/16 v5, 0x7c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x48

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x49

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x4a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2f

    const/16 v5, 0x3f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x4b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x71

    const/16 v5, 0x71

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x4c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    const/16 v4, 0x77

    const/16 v5, 0x77

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x4d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x4e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x10

    aget v3, v3, v4

    const/16 v4, 0x72

    const/16 v5, 0x72

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x4f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x11

    aget v3, v3, v4

    const/16 v4, 0x74

    const/16 v5, 0x74

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x50

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    const/16 v4, 0x79

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x51

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x52

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x53

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x54

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x16

    aget v3, v3, v4

    const/16 v4, 0x70

    const/16 v5, 0x70

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x55

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x5b

    const/16 v5, 0x7b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x56

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x5d

    const/16 v5, 0x7d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x57

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x58

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1a

    aget v3, v3, v4

    const/16 v4, 0x73

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x59

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    const/16 v4, 0x64

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x5a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1c

    aget v3, v3, v4

    const/16 v4, 0x66

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x5b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1d

    aget v3, v3, v4

    const/16 v4, 0x67

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x5c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1e

    aget v3, v3, v4

    const/16 v4, 0x68

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x5d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    const/16 v4, 0x6a

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x5e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x20

    aget v3, v3, v4

    const/16 v4, 0x6b

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x5f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x21

    aget v3, v3, v4

    const/16 v4, 0x6c

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x60

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x61

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const v4, 0xffe6

    const/16 v5, 0x7c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x62

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x26

    aget v3, v3, v4

    const/16 v4, 0x7a

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x63

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    const/16 v4, 0x78

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x64

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x28

    aget v3, v3, v4

    const/16 v4, 0x63

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x65

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x29

    aget v3, v3, v4

    const/16 v4, 0x76

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x66

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2a

    aget v3, v3, v4

    const/16 v4, 0x62

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x67

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    const/16 v4, 0x6e

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x68

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x12

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x6d

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x69

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x60

    const/16 v5, 0x7e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x6a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x6b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x3f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x6c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x2b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x6d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x22

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x6e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x20ac

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x6f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x3d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x70

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x71

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x2f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x72

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x73

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x2116

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x74

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x49

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x75

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x56

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x76

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x44b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x77

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    const/16 v4, 0x443

    const/16 v5, 0x443

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x78

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x435

    const/16 v5, 0x435

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x79

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x10

    aget v3, v3, v4

    const/16 v4, 0x438

    const/16 v5, 0x438

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x7a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x11

    aget v3, v3, v4

    const/16 v4, 0x448

    const/16 v5, 0x448

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x7b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    const/16 v4, 0x449

    const/16 v5, 0x449

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x7c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x43a

    const/16 v5, 0x43a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x7d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x441

    const/16 v5, 0x441

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x7e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x434

    const/16 v5, 0x434

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x7f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x16

    aget v3, v3, v4

    const/16 v4, 0x437

    const/16 v5, 0x437

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x80

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x446

    const/16 v5, 0x446

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x81

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x3b

    const/16 v5, 0xa7

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x82

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x44c

    const/16 v5, 0x44c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x83

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1a

    aget v3, v3, v4

    const/16 v4, 0x44f

    const/16 v5, 0x44f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x84

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    const/16 v4, 0x430

    const/16 v5, 0x430

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x85

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1c

    aget v3, v3, v4

    const/16 v4, 0x43e

    const/16 v5, 0x43e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x86

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1d

    aget v3, v3, v4

    const/16 v4, 0x436

    const/16 v5, 0x436

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x87

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1e

    aget v3, v3, v4

    const/16 v4, 0x433

    const/16 v5, 0x433

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x88

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    const/16 v4, 0x442

    const/16 v5, 0x442

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x89

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x20

    aget v3, v3, v4

    const/16 v4, 0x43d

    const/16 v5, 0x43d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x21

    aget v3, v3, v4

    const/16 v4, 0x432

    const/16 v5, 0x432

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0x43c

    const/16 v5, 0x43c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0x447

    const/16 v5, 0x447

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x28

    const/16 v5, 0x29

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x8f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x26

    aget v3, v3, v4

    const/16 v4, 0x44e

    const/16 v5, 0x44e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x90

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    const/16 v4, 0x439

    const/16 v5, 0x439

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x91

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x28

    aget v3, v3, v4

    const/16 v4, 0x44a

    const/16 v5, 0x44a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x92

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x29

    aget v3, v3, v4

    const/16 v4, 0x44d

    const/16 v5, 0x44d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x93

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2a

    aget v3, v3, v4

    const/16 v4, 0x444

    const/16 v5, 0x444

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x94

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    const/16 v4, 0x445

    const/16 v5, 0x445

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x95

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x43f

    const/16 v5, 0x43f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x96

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x440

    const/16 v5, 0x440

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x97

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x43b

    const/16 v5, 0x43b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x98

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x431

    const/16 v5, 0x431

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x99

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xb8

    const/16 v5, 0xa8

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, 0x2c7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, 0x5e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x24

    const/16 v6, 0x2d8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, 0xb0

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x9f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x26

    const/16 v6, 0x2db

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x2f

    const/16 v6, 0x60

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, 0x2d9

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, 0xb4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x3d

    const/16 v6, 0x2dd

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x3f

    const/16 v6, 0xa8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x2a

    const/16 v6, 0xb8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x71

    const/16 v5, 0x71

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    const/16 v4, 0x77

    const/16 v5, 0x77

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xa9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    const/16 v4, 0x7a

    const/16 v5, 0x7a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xaa

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xab

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xac

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xad

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x161

    const/16 v5, 0x161

    const/16 v6, 0xf7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xae

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x111

    const/16 v5, 0x111

    const/16 v6, 0xd7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xaf

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1c

    aget v3, v3, v4

    const/16 v4, 0x66

    const/16 v5, 0x66

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1d

    aget v3, v3, v4

    const/16 v4, 0x67

    const/16 v5, 0x67

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x20

    aget v3, v3, v4

    const/16 v4, 0x6b

    const/16 v5, 0x6b

    const/16 v6, 0x142

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x21

    aget v3, v3, v4

    const/16 v4, 0x6c

    const/16 v5, 0x6c

    const/16 v6, 0x141

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0x10d

    const/16 v5, 0x10d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0x107

    const/16 v5, 0x107

    const/16 v6, 0xdf

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x17e

    const/16 v5, 0x17e

    const/16 v6, 0xa4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x26

    aget v3, v3, v4

    const/16 v4, 0x79

    const/16 v5, 0x79

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xb9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x29

    aget v3, v3, v4

    const/16 v4, 0x76

    const/16 v5, 0x76

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xba

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2a

    aget v3, v3, v4

    const/16 v4, 0x62

    const/16 v5, 0x62

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xbb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xbc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x6d

    const/16 v5, 0x6d

    const/16 v6, 0xa7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xbd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3b

    const/16 v6, 0x3c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xbe

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, 0x3e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xbf

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x80

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xb8

    const/16 v5, 0xa8

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, 0x2c7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, 0x5e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x24

    const/16 v6, 0x2d8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, 0xb0

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x26

    const/16 v6, 0x2db

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x2f

    const/16 v6, 0x60

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, 0x2d9

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xc9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, 0xb4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xca

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x3d

    const/16 v6, 0x2dd

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xcb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x3f

    const/16 v6, 0xa8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xcc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x2a

    const/16 v6, 0xb8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xcd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x71

    const/16 v5, 0x71

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xce

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    const/16 v4, 0x77

    const/16 v5, 0x77

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xcf

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    const/16 v4, 0x7a

    const/16 v5, 0x7a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x161

    const/16 v5, 0x161

    const/16 v6, 0xf7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x111

    const/16 v5, 0x111

    const/16 v6, 0xd7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1c

    aget v3, v3, v4

    const/16 v4, 0x66

    const/16 v5, 0x66

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1d

    aget v3, v3, v4

    const/16 v4, 0x67

    const/16 v5, 0x67

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x20

    aget v3, v3, v4

    const/16 v4, 0x6b

    const/16 v5, 0x6b

    const/16 v6, 0x142

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xd9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x21

    aget v3, v3, v4

    const/16 v4, 0x6c

    const/16 v5, 0x6c

    const/16 v6, 0x141

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xda

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0x10d

    const/16 v5, 0x10d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xdb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0x107

    const/16 v5, 0x107

    const/16 v6, 0xdf

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xdc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x17e

    const/16 v5, 0x17e

    const/16 v6, 0xa4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xdd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xde

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x26

    aget v3, v3, v4

    const/16 v4, 0x79

    const/16 v5, 0x79

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xdf

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x29

    aget v3, v3, v4

    const/16 v4, 0x76

    const/16 v5, 0x76

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xe0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2a

    aget v3, v3, v4

    const/16 v4, 0x62

    const/16 v5, 0x62

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xe1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xe2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x6d

    const/16 v5, 0x6d

    const/16 v6, 0xa7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xe3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3b

    const/16 v6, 0x3c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xe4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, 0x3e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xe5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x24

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xe6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xb2

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xe7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x26

    const/16 v5, 0x31

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xe8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0xe9

    const/16 v5, 0x32

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xe9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x22

    const/16 v5, 0x33

    const/16 v6, 0x23

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xea

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x34

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xeb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x28

    const/16 v5, 0x35

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xec

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x36

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xed

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0xe8

    const/16 v5, 0x37

    const/16 v6, 0x60

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xee

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x5f

    const/16 v5, 0x38

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xef

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0xe7

    const/16 v5, 0x39

    const/16 v6, 0x5e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xf0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0xe0

    const/16 v5, 0x30

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xf1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x29

    const/16 v5, 0xb0

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xf2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0x3d

    const/16 v5, 0x2b

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xf3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xf4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    const/16 v4, 0x7a

    const/16 v5, 0x7a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xf5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xf6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xf7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xf8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xf9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x16

    aget v3, v3, v4

    const/16 v4, 0x70

    const/16 v5, 0x70

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xfa

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x5e

    const/16 v5, 0xa8

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xfb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x24

    const/16 v5, 0xa3

    const/16 v6, 0xa4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xfc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x71

    const/16 v5, 0x71

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xfd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0x6d

    const/16 v5, 0x6d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xfe

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xf9

    const/16 v5, 0x25

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0xff

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x2a

    const/16 v5, 0xb5

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x100

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x101

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x26

    aget v3, v3, v4

    const/16 v4, 0x77

    const/16 v5, 0x77

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x102

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x103

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x3b

    const/16 v5, 0x2e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x104

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x3a

    const/16 v5, 0x2f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x105

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xc

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x21

    const/16 v5, 0xa7

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x106

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x5c

    const/16 v5, 0x7c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x107

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x108

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x109

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0xa3

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x10a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x24

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x10b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x10c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x26

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x10d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x2f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x10e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x10f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x110

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x3d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x111

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x3f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x112

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0xec

    const/16 v5, 0x5e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x113

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x114

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x115

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x116

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x117

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0xe8

    const/16 v5, 0xe9

    const/16 v6, 0x5b

    const/16 v7, 0x7b

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x118

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x2a

    const/16 v6, 0x5d

    const/16 v7, 0x7d

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x119

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x11a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0xf2

    const/16 v5, 0xe7

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x11b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xe0

    const/16 v5, 0xb0

    const/16 v6, 0x23

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x11c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0xf9

    const/16 v5, 0xa7

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x11d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x11e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x11f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x120

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x121

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xba

    const/16 v5, 0xaa

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x122

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x123

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x124

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0xb7

    const/16 v6, 0x23

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x125

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x24

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x126

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x127

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x26

    const/16 v6, 0xac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x128

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x2f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x129

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x12a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x12b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x3d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x12c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x3f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x12d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0xa1

    const/16 v5, 0xbf

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x12e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x12f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x130

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x131

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x132

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x60

    const/16 v5, 0x5e

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x133

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x2a

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x134

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x135

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0xf1

    const/16 v5, 0xf1

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x136

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xb4

    const/16 v5, 0xa8

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x137

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0xe7

    const/16 v5, 0xe7

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x138

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x139

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x13a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x13b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x13c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x7c

    const/16 v5, 0xba

    const/16 v6, 0xac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x13d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x13e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x13f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x140

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x24

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x141

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x142

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x26

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x143

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x2f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x144

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x145

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x146

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x3d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x147

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x3f

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x148

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0xbf

    const/16 v5, 0xa1

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x149

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x71

    const/16 v5, 0x71

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x14a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x14b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x14c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x14d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x14e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0xb4

    const/16 v5, 0xa8

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x14f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x2a

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x150

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x151

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0xf1

    const/16 v5, 0xf1

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x152

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0x7b

    const/16 v5, 0x5b

    const/16 v6, 0x5e

    const/16 v7, 0x5e

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x153

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x7d

    const/16 v5, 0x5d

    const/16 v6, 0x60

    const/16 v7, 0x60

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x154

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x155

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x156

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x157

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x158

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xa7

    const/16 v5, 0xbd

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x159

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x15a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x15b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, 0xa3

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x15c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0xa4

    const/16 v6, 0x24

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x15d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x15e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x26

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x15f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x2f

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x160

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x161

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x162

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x3d

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x163

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x3f

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x164

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0xb4

    const/16 v5, 0x60

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x165

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x166

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x167

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x168

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x169

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0xe5

    const/16 v5, 0xe5

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x16a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0xa8

    const/16 v5, 0x5e

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x16b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x16c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0xf6

    const/16 v5, 0xf6

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x16d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xe4

    const/16 v5, 0xe4

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x16e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x2a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x16f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x170

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x6d

    const/16 v5, 0x6d

    const/16 v6, 0x3bc

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x171

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x172

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x173

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x174

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xa7

    const/16 v5, 0xbd

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x175

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x176

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x177

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, 0xa3

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x178

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0xa4

    const/16 v6, 0x24

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x179

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x17a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x26

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x17b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x2f

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x17c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x17d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x17e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x3d

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x17f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x3f

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x180

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0xb4

    const/16 v5, 0x60

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x181

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x182

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x183

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x184

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x185

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0xe5

    const/16 v5, 0xe5

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x186

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0xa8

    const/16 v5, 0x5e

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x187

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x188

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0xf6

    const/16 v5, 0xf6

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x189

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xe4

    const/16 v5, 0xe4

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x18a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x2a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x18b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x18c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x6d

    const/16 v5, 0x6d

    const/16 v6, 0x3bc

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x18d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x18e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x18f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x190

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xa7

    const/16 v5, 0xbd

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x191

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x192

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x193

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, 0xa3

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x194

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0xa4

    const/16 v6, 0x24

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x195

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x196

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x26

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x197

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x2f

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x198

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x199

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x19a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x3d

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x19b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x3f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x19c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0x5c

    const/16 v5, 0x60

    const/16 v6, 0x27

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x19d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x19e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x19f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0xe5

    const/16 v5, 0xe5

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0xa8

    const/16 v5, 0x5e

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0xf8

    const/16 v5, 0xf8

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xe6

    const/16 v5, 0xe6

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x2a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x6d

    const/16 v5, 0x6d

    const/16 v6, 0x3bc

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1aa

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1ab

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1ac

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xa7

    const/16 v5, 0xbd

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1ad

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1ae

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1af

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, 0xa3

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0xa4

    const/16 v6, 0x24

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x26

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x2f

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x3d

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x3f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0xb4

    const/16 v5, 0x60

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1ba

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1bb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1bc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1bd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0xe5

    const/16 v5, 0xe5

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1be

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0xa8

    const/16 v5, 0x5e

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1bf

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0xe6

    const/16 v5, 0xe6

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xf8

    const/16 v5, 0xf8

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x2a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x6d

    const/16 v5, 0x6d

    const/16 v6, 0x3bc

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x5e

    const/16 v5, 0xb0

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1ca

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0xa8

    const/16 v6, 0xb2

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1cb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0xa7

    const/16 v6, 0xb3

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1cc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x24

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1cd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1ce

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x26

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1cf

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x2f

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1d0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1d1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1d2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x3d

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1d3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0xdf

    const/16 v5, 0x3f

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1d4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0xb4

    const/16 v5, 0x60

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1d5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x71

    const/16 v5, 0x71

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1d6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1d7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    const/16 v4, 0x7a

    const/16 v5, 0x7a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1d8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1d9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1da

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1db

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0xfc

    const/16 v5, 0xfc

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1dc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x2a

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1dd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1de

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0xf6

    const/16 v5, 0xf6

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1df

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xe4

    const/16 v5, 0xe4

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1e0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x23

    const/16 v5, 0x27

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1e1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1e2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x26

    aget v3, v3, v4

    const/16 v4, 0x79

    const/16 v5, 0x79

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1e3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x6d

    const/16 v5, 0x6d

    const/16 v6, 0xb5

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1e4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1e5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1e6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1e7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x3b

    const/16 v5, 0xb0

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1e8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x31

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1e9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x11b

    const/16 v5, 0x32

    const/16 v6, 0x2c7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1ea

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x161

    const/16 v5, 0x33

    const/16 v6, 0x5e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1eb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x10d

    const/16 v5, 0x34

    const/16 v6, 0x2d8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1ec

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x159

    const/16 v5, 0x35

    const/16 v6, 0xb0

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1ed

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x17e

    const/16 v5, 0x36

    const/16 v6, 0x2db

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1ee

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0xfd

    const/16 v5, 0x37

    const/16 v6, 0x60

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1ef

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0xe1

    const/16 v5, 0x38

    const/16 v6, 0x2d9

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1f0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0xed

    const/16 v5, 0x39

    const/16 v6, 0xb4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1f1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0xe9

    const/16 v5, 0x30

    const/16 v6, 0x2dd

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1f2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x3d

    const/16 v5, 0x25

    const/16 v6, 0xa8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1f3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0xb4

    const/16 v5, 0x2c7

    const/16 v6, 0xb8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1f4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x71

    const/16 v5, 0x71

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1f5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    const/16 v4, 0x77

    const/16 v5, 0x77

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1f6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1f7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    const/16 v4, 0x7a

    const/16 v5, 0x7a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1f8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1f9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1fa

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1fb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x16

    aget v3, v3, v4

    const/16 v4, 0x70

    const/16 v5, 0x70

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1fc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0xfa

    const/16 v5, 0x2f

    const/16 v6, 0xf7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1fd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x29

    const/16 v5, 0x28

    const/16 v6, 0xd7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1fe

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1ff

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1a

    aget v3, v3, v4

    const/16 v4, 0x73

    const/16 v5, 0x73

    const/16 v6, 0x111

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x200

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    const/16 v4, 0x64

    const/16 v5, 0x64

    const/16 v6, 0x110

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x201

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1c

    aget v3, v3, v4

    const/16 v4, 0x66

    const/16 v5, 0x66

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x202

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1d

    aget v3, v3, v4

    const/16 v4, 0x67

    const/16 v5, 0x67

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x203

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x20

    aget v3, v3, v4

    const/16 v4, 0x6b

    const/16 v5, 0x6b

    const/16 v6, 0x142

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x204

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x21

    aget v3, v3, v4

    const/16 v4, 0x6c

    const/16 v5, 0x6c

    const/16 v6, 0x141

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x205

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0x16f

    const/16 v5, 0x22

    const/16 v6, 0x24

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x206

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xa7

    const/16 v5, 0x21

    const/16 v6, 0xdf

    const/16 v7, 0x21

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x207

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x208

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0xa8

    const/16 v5, 0x27

    const/16 v6, 0xa4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x209

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x26

    aget v3, v3, v4

    const/16 v4, 0x79

    const/16 v5, 0x79

    const/16 v6, 0x3e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x20a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    const/16 v4, 0x78

    const/16 v5, 0x78

    const/16 v6, 0x23

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x20b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x28

    aget v3, v3, v4

    const/16 v4, 0x63

    const/16 v5, 0x63

    const/16 v6, 0x26

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x20c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x29

    aget v3, v3, v4

    const/16 v4, 0x76

    const/16 v5, 0x76

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x20d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2a

    aget v3, v3, v4

    const/16 v4, 0x62

    const/16 v5, 0x62

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x20e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x20f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3f

    const/16 v6, 0x3c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x210

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, 0x3e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x211

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, 0x2a

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x212

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x5c

    const/16 v5, 0x7c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x213

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x214

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, 0xa3

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x215

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x24

    const/16 v6, 0xa7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x216

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x217

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x26

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x218

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x2f

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x219

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x21a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x21b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x3d

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x21c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x3f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x21d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0xab

    const/16 v5, 0xbb

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x21e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x21f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x220

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x221

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x222

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x2a

    const/16 v6, 0xa8

    const/16 v7, 0xa8

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x223

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0xb4

    const/16 v5, 0x60

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x224

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x225

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0xe7

    const/16 v5, 0xe7

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x226

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xba

    const/16 v5, 0xaa

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x227

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x7e

    const/16 v5, 0x5e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x228

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x229

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x22a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x22b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x22c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x22

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x22d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, 0xb9

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x22e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x40

    const/16 v6, 0xb2

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x22f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, 0xb3

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x230

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x24

    const/16 v6, 0xa3

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x231

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, 0xa2

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x232

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0xa8

    const/16 v6, 0xac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x233

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x26

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x234

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x2a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x235

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x28

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x236

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x29

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x237

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x238

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0x3d

    const/16 v5, 0x2b

    const/16 v6, 0xa7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x239

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x71

    const/16 v5, 0x71

    const/16 v6, 0x2f

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x23a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    const/16 v4, 0x77

    const/16 v5, 0x77

    const/16 v6, 0x3f

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x23b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x23c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x23d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x23e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x23f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0xb4

    const/16 v5, 0x60

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x240

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x5b

    const/16 v5, 0x7b

    const/16 v6, 0xaa

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x241

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x242

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0xe7

    const/16 v5, 0xe7

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x243

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0x7e

    const/16 v5, 0x5e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x244

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x5d

    const/16 v5, 0x7d

    const/16 v6, 0xba

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x245

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x5c

    const/16 v5, 0x7c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x246

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x28

    aget v3, v3, v4

    const/16 v4, 0x63

    const/16 v5, 0x63

    const/16 v6, 0x20a2

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x247

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x248

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x249

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x16

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x3b

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x24a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x22

    const/16 v5, 0xe9

    const/16 v6, 0x3c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x24b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, 0x3e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x24c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x27

    const/16 v6, 0xa3

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x24d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x5e

    const/16 v6, 0x23

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x24e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x2b

    const/16 v6, 0x24

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x24f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, 0xbd

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x250

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x26

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x251

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x2f

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x252

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x253

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x254

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x3d

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x255

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x2a

    const/16 v5, 0x3f

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x256

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x257

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x71

    const/16 v5, 0x71

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x258

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x259

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x25a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x131

    const/16 v5, 0x131

    const/16 v6, 0x69

    const/16 v7, 0x130

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x25b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x25c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x11f

    const/16 v5, 0x11f

    const/16 v6, 0xa8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x25d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0xfc

    const/16 v5, 0xfc

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x25e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, 0xe6

    const/16 v7, 0xc6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x25f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1a

    aget v3, v3, v4

    const/16 v4, 0x73

    const/16 v5, 0x73

    const/16 v6, 0x3b2

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x260

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0x15f

    const/16 v5, 0x15f

    const/16 v6, 0xb4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x261

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x130

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x262

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3b

    const/16 v6, 0x60

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x263

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x264

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0xf6

    const/16 v5, 0xf6

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x265

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0xe7

    const/16 v5, 0xe7

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x266

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x267

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x40

    const/16 v6, 0xb2

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x268

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, 0xb3

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x269

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x24

    const/16 v6, 0xa3

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x26a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, 0xa7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x26b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x5e

    const/16 v6, 0xb6

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x26c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x2a

    const/16 v6, 0xa4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x26d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x28

    const/16 v6, 0xa6

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x26e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x29

    const/16 v6, 0xb0

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x26f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, 0xb1

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x270

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0x3d

    const/16 v5, 0x2b

    const/16 v6, 0xbd

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x271

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x3b

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x272

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    const/16 v4, 0x3c2

    const/16 v5, 0x385

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x273

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x3b5

    const/16 v5, 0x3b5

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x274

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x10

    aget v3, v3, v4

    const/16 v4, 0x3c1

    const/16 v5, 0x3c1

    const/16 v6, 0xae

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x275

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x11

    aget v3, v3, v4

    const/16 v4, 0x3c4

    const/16 v5, 0x3c4

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x276

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    const/16 v4, 0x3c5

    const/16 v5, 0x3c5

    const/16 v6, 0xa5

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x277

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x3b8

    const/16 v5, 0x3b8

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x278

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x3b9

    const/16 v5, 0x3b9

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x279

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x3bf

    const/16 v5, 0x3bf

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x27a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x16

    aget v3, v3, v4

    const/16 v4, 0x3c0

    const/16 v5, 0x3c0

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x27b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x5b

    const/16 v5, 0x7b

    const/16 v6, 0xab

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x27c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x5d

    const/16 v5, 0x7d

    const/16 v6, 0xbb

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x27d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x3b1

    const/16 v5, 0x3b1

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x27e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1a

    aget v3, v3, v4

    const/16 v4, 0x3c3

    const/16 v5, 0x3c3

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x27f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    const/16 v4, 0x3b4

    const/16 v5, 0x3b4

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x280

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1c

    aget v3, v3, v4

    const/16 v4, 0x3c6

    const/16 v5, 0x3c6

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x281

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1d

    aget v3, v3, v4

    const/16 v4, 0x3b3

    const/16 v5, 0x3b3

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x282

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1e

    aget v3, v3, v4

    const/16 v4, 0x3b7

    const/16 v5, 0x3b7

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x283

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    const/16 v4, 0x3be

    const/16 v5, 0x3be

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x284

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x20

    aget v3, v3, v4

    const/16 v4, 0x3ba

    const/16 v5, 0x3ba

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x285

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x21

    aget v3, v3, v4

    const/16 v4, 0x3bb

    const/16 v5, 0x3bb

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x286

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0x384

    const/16 v5, 0xa8

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x287

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x22

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x288

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x5c

    const/16 v5, 0x7c

    const/16 v6, 0xac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x289

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x28a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x26

    aget v3, v3, v4

    const/16 v4, 0x3b6

    const/16 v5, 0x3b6

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x28b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    const/16 v4, 0x3c7

    const/16 v5, 0x3c7

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x28c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x28

    aget v3, v3, v4

    const/16 v4, 0x3c8

    const/16 v5, 0x3c8

    const/16 v6, 0xa9

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x28d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x29

    aget v3, v3, v4

    const/16 v4, 0x3c9

    const/16 v5, 0x3c9

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x28e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2a

    aget v3, v3, v4

    const/16 v4, 0x3b2

    const/16 v5, 0x3b2

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x28f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    const/16 v4, 0x3bd

    const/16 v5, 0x3bd

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x290

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x3bc

    const/16 v5, 0x3bc

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x291

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x451

    const/16 v5, 0x401

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x292

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x293

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x2116

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x294

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x3b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x295

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x296

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x3f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x297

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x439

    const/16 v5, 0x439

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x298

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    const/16 v4, 0x446

    const/16 v5, 0x446

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x299

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x443

    const/16 v5, 0x443

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x29a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x10

    aget v3, v3, v4

    const/16 v4, 0x43a

    const/16 v5, 0x43a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x29b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x11

    aget v3, v3, v4

    const/16 v4, 0x435

    const/16 v5, 0x435

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x29c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    const/16 v4, 0x43d

    const/16 v5, 0x43d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x29d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x433

    const/16 v5, 0x433

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x29e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x448

    const/16 v5, 0x448

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x29f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x449

    const/16 v5, 0x449

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2a0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x16

    aget v3, v3, v4

    const/16 v4, 0x437

    const/16 v5, 0x437

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2a1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x445

    const/16 v5, 0x445

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2a2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x44a

    const/16 v5, 0x44a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2a3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x444

    const/16 v5, 0x444

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2a4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1a

    aget v3, v3, v4

    const/16 v4, 0x44b

    const/16 v5, 0x44b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2a5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    const/16 v4, 0x432

    const/16 v5, 0x432

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2a6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1c

    aget v3, v3, v4

    const/16 v4, 0x430

    const/16 v5, 0x430

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2a7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1d

    aget v3, v3, v4

    const/16 v4, 0x43f

    const/16 v5, 0x43f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2a8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1e

    aget v3, v3, v4

    const/16 v4, 0x440

    const/16 v5, 0x440

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2a9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    const/16 v4, 0x43e

    const/16 v5, 0x43e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2aa

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x20

    aget v3, v3, v4

    const/16 v4, 0x43b

    const/16 v5, 0x43b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2ab

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x21

    aget v3, v3, v4

    const/16 v4, 0x434

    const/16 v5, 0x434

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2ac

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0x436

    const/16 v5, 0x436

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2ad

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0x44d

    const/16 v5, 0x44d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2ae

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2af

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x2f

    const/16 v5, 0x7c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2b0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x26

    aget v3, v3, v4

    const/16 v4, 0x44f

    const/16 v5, 0x44f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2b1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    const/16 v4, 0x447

    const/16 v5, 0x447

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2b2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x28

    aget v3, v3, v4

    const/16 v4, 0x441

    const/16 v5, 0x441

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2b3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x29

    aget v3, v3, v4

    const/16 v4, 0x43c

    const/16 v5, 0x43c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2b4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2a

    aget v3, v3, v4

    const/16 v4, 0x438

    const/16 v5, 0x438

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2b5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    const/16 v4, 0x442

    const/16 v5, 0x442

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2b6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x44c

    const/16 v5, 0x44c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2b7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x431

    const/16 v5, 0x431

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2b8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x44e

    const/16 v5, 0x44e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2b9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x19

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x2c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2ba

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x451

    const/16 v5, 0x401

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2bb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2bc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x2116

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2bd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x3b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2be

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2bf

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x3f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2c0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x439

    const/16 v5, 0x439

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2c1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    const/16 v4, 0x446

    const/16 v5, 0x446

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2c2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x443

    const/16 v5, 0x443

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2c3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x10

    aget v3, v3, v4

    const/16 v4, 0x43a

    const/16 v5, 0x43a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2c4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x11

    aget v3, v3, v4

    const/16 v4, 0x435

    const/16 v5, 0x435

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2c5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    const/16 v4, 0x43d

    const/16 v5, 0x43d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2c6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x433

    const/16 v5, 0x433

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2c7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x448

    const/16 v5, 0x448

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2c8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x449

    const/16 v5, 0x449

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2c9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x16

    aget v3, v3, v4

    const/16 v4, 0x437

    const/16 v5, 0x437

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2ca

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x445

    const/16 v5, 0x445

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2cb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x457

    const/16 v5, 0x457

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2cc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x444

    const/16 v5, 0x444

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2cd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1a

    aget v3, v3, v4

    const/16 v4, 0x456

    const/16 v5, 0x456

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2ce

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    const/16 v4, 0x432

    const/16 v5, 0x432

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2cf

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1c

    aget v3, v3, v4

    const/16 v4, 0x430

    const/16 v5, 0x430

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2d0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1d

    aget v3, v3, v4

    const/16 v4, 0x43f

    const/16 v5, 0x43f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2d1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1e

    aget v3, v3, v4

    const/16 v4, 0x440

    const/16 v5, 0x440

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2d2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    const/16 v4, 0x43e

    const/16 v5, 0x43e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2d3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x20

    aget v3, v3, v4

    const/16 v4, 0x43b

    const/16 v5, 0x43b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2d4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x21

    aget v3, v3, v4

    const/16 v4, 0x434

    const/16 v5, 0x434

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2d5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0x436

    const/16 v5, 0x436

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2d6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0x454

    const/16 v5, 0x454

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2d7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2d8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x2f

    const/16 v5, 0x7c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2d9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x26

    aget v3, v3, v4

    const/16 v4, 0x44f

    const/16 v5, 0x44f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2da

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    const/16 v4, 0x447

    const/16 v5, 0x447

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2db

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x28

    aget v3, v3, v4

    const/16 v4, 0x441

    const/16 v5, 0x441

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2dc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x29

    aget v3, v3, v4

    const/16 v4, 0x43c

    const/16 v5, 0x43c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2dd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2a

    aget v3, v3, v4

    const/16 v4, 0x438

    const/16 v5, 0x438

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2de

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    const/16 v4, 0x442

    const/16 v5, 0x442

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2df

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x44c

    const/16 v5, 0x44c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2e0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x431

    const/16 v5, 0x431

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2e1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x44e

    const/16 v5, 0x44e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2e2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x22

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x2c

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2e3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0xa7

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2e4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x27

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2e5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, 0x2c7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2e6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x2b

    const/16 v6, 0x5e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2e7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x21

    const/16 v6, 0x2d8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2e8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, 0xb0

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2e9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x2f

    const/16 v6, 0x2db

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2ea

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x3d

    const/16 v6, 0x60

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2eb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, 0x2d9

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2ec

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, 0xb4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2ed

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0xf6

    const/16 v5, 0xf6

    const/16 v6, 0x2dd

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2ee

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0xfc

    const/16 v5, 0xfc

    const/16 v6, 0xa8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2ef

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0xf3

    const/16 v5, 0xf3

    const/16 v6, 0xb8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2f0

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x71

    const/16 v5, 0x71

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2f1

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    const/16 v4, 0x77

    const/16 v5, 0x77

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2f2

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0xc4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2f3

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x10

    aget v3, v3, v4

    const/16 v4, 0x72

    const/16 v5, 0x72

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2f4

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x11

    aget v3, v3, v4

    const/16 v4, 0x74

    const/16 v5, 0x74

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2f5

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    const/16 v4, 0x7a

    const/16 v5, 0x7a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2f6

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2f7

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, 0xcd

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2f8

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2f9

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x16

    aget v3, v3, v4

    const/16 v4, 0x70

    const/16 v5, 0x70

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2fa

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x151

    const/16 v5, 0x151

    const/16 v6, 0xf7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2fb

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0xfa

    const/16 v5, 0xfa

    const/16 v6, 0xd7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2fc

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, 0xe4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2fd

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1a

    aget v3, v3, v4

    const/16 v4, 0x73

    const/16 v5, 0x73

    const/16 v6, 0x111

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2fe

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    const/16 v4, 0x64

    const/16 v5, 0x64

    const/16 v6, 0x110

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x2ff

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1c

    aget v3, v3, v4

    const/16 v4, 0x66

    const/16 v5, 0x66

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x300

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1d

    aget v3, v3, v4

    const/16 v4, 0x67

    const/16 v5, 0x67

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x301

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1e

    aget v3, v3, v4

    const/16 v4, 0x68

    const/16 v5, 0x68

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x302

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    const/16 v4, 0x6a

    const/16 v5, 0x6a

    const/16 v6, 0xed

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x303

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x20

    aget v3, v3, v4

    const/16 v4, 0x6b

    const/16 v5, 0x6b

    const/16 v6, 0x142

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x304

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x21

    aget v3, v3, v4

    const/16 v4, 0x6c

    const/16 v5, 0x6c

    const/16 v6, 0x141

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x305

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0xe9

    const/16 v5, 0xe9

    const/16 v6, 0x24

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x306

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xe1

    const/16 v5, 0xe1

    const/16 v6, 0xdf

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x307

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x171

    const/16 v5, 0x171

    const/16 v6, 0xa4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x308

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0xed

    const/16 v5, 0xed

    const/16 v6, 0x3c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x309

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x26

    aget v3, v3, v4

    const/16 v4, 0x79

    const/16 v5, 0x79

    const/16 v6, 0x3e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x30a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    const/16 v4, 0x78

    const/16 v5, 0x78

    const/16 v6, 0x23

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x30b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x28

    aget v3, v3, v4

    const/16 v4, 0x63

    const/16 v5, 0x63

    const/16 v6, 0x26

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x30c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x29

    aget v3, v3, v4

    const/16 v4, 0x76

    const/16 v5, 0x76

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x30d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2a

    aget v3, v3, v4

    const/16 v4, 0x62

    const/16 v5, 0x62

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x30e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x30f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x6d

    const/16 v5, 0x6d

    const/16 v6, 0x3c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x310

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3f

    const/16 v6, 0x3b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x311

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, 0x3e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x312

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, 0x2a

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x313

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xb2

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x314

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x26

    const/16 v5, 0x31

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x315

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0xe9

    const/16 v5, 0x32

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x316

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x22

    const/16 v5, 0x33

    const/16 v6, 0x23

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x317

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x34

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x318

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x28

    const/16 v5, 0x35

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x319

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x36

    const/16 v6, 0xa6

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x31a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0xe8

    const/16 v5, 0x37

    const/16 v6, 0x60

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x31b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x5f

    const/16 v5, 0x38

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x31c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0xe7

    const/16 v5, 0x39

    const/16 v6, 0x5e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x31d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0xe0

    const/16 v5, 0x30

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x31e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x29

    const/16 v5, 0xb0

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x31f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0x3d

    const/16 v5, 0x2b

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x320

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x321

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x322

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x323

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x324

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0x5e

    const/16 v5, 0x22

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x325

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0x24

    const/16 v5, 0xa3

    const/16 v6, 0xa4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x326

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x71

    const/16 v5, 0x71

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x327

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0x6d

    const/16 v5, 0x6d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x328

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xf9

    const/16 v5, 0x25

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x329

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x2a

    const/16 v5, 0xb5

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x32a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x32b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x32c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x3b

    const/16 v5, 0x2e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x32d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x3a

    const/16 v5, 0x2f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x32e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x9

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x21

    const/16 v5, 0xa7

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x32f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x2c7

    const/16 v5, 0x7e

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x330

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x31

    const/16 v5, 0x21

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x331

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x32

    const/16 v5, 0x22

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x332

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x33

    const/16 v5, 0x23

    const/16 v6, 0xa3

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x333

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x34

    const/16 v5, 0xa4

    const/16 v6, 0x24

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x334

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x35

    const/16 v5, 0x25

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x335

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x36

    const/16 v5, 0x26

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x336

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0x37

    const/16 v5, 0x2f

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x337

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0x38

    const/16 v5, 0x28

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x338

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0x39

    const/16 v5, 0x29

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x339

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x3d

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x33a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x3f

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x33b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0xb4

    const/16 v5, 0x60

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x33c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, 0x20ac

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x33d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x33e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x33f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x340

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0xfc

    const/16 v5, 0xfc

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x341

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0xf5

    const/16 v5, 0xf5

    const/16 v6, 0xa7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x342

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x343

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0xf6

    const/16 v5, 0xf6

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x344

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xe4

    const/16 v5, 0xe4

    const/16 v6, 0x5e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x345

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x2a

    const/16 v6, 0xbd

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x346

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x347

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3b

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x348

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x349

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x25

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x34a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x3b

    const/16 v5, 0xb0

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x34b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x31

    const/16 v6, 0x7e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x34c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x13e

    const/16 v5, 0x32

    const/16 v6, 0x2c7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x34d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    const/16 v4, 0x161

    const/16 v5, 0x33

    const/16 v6, 0x5e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x34e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    const/16 v4, 0x10d

    const/16 v5, 0x34

    const/16 v6, 0x2d8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x34f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/16 v4, 0x165

    const/16 v5, 0x35

    const/16 v6, 0xb0

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x350

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    const/16 v4, 0x17e

    const/16 v5, 0x36

    const/16 v6, 0x2db

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x351

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    const/16 v4, 0xfd

    const/16 v5, 0x37

    const/16 v6, 0x60

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x352

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    const/16 v4, 0xe1

    const/16 v5, 0x38

    const/16 v6, 0x2d9

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x353

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    const/16 v4, 0xed

    const/16 v5, 0x39

    const/16 v6, 0xb4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x354

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    const/16 v4, 0xe9

    const/16 v5, 0x30

    const/16 v6, 0x2dd

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x355

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    const/16 v4, 0x3d

    const/16 v5, 0x25

    const/16 v6, 0xa8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x356

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    const/16 v4, 0xb4

    const/16 v5, 0x2c7

    const/16 v6, 0xb8

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x357

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    const/16 v4, 0x71

    const/16 v5, 0x71

    const/16 v6, 0x5c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x358

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    const/16 v4, 0x77

    const/16 v5, 0x77

    const/16 v6, 0x7c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x359

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x35a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x10

    aget v3, v3, v4

    const/16 v4, 0x72

    const/16 v5, 0x72

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x35b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x11

    aget v3, v3, v4

    const/16 v4, 0x74

    const/16 v5, 0x74

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x35c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    const/16 v4, 0x7a

    const/16 v5, 0x7a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x35d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    const/16 v4, 0x75

    const/16 v5, 0x75

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x35e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    const/16 v4, 0x69

    const/16 v5, 0x69

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x35f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x360

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x16

    aget v3, v3, v4

    const/16 v4, 0x70

    const/16 v5, 0x70

    const/16 v6, 0x27

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x361

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    const/16 v4, 0xfa

    const/16 v5, 0x2f

    const/16 v6, 0xf7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x362

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x18

    aget v3, v3, v4

    const/16 v4, 0xe4

    const/16 v5, -0xff

    const/16 v6, 0xd7

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x363

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    const/16 v4, 0x61

    const/16 v5, 0x61

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x364

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1a

    aget v3, v3, v4

    const/16 v4, 0x73

    const/16 v5, 0x73

    const/16 v6, 0x111

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x365

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    const/16 v4, 0x64

    const/16 v5, 0x64

    const/16 v6, 0x110

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x366

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1c

    aget v3, v3, v4

    const/16 v4, 0x66

    const/16 v5, 0x66

    const/16 v6, 0x5b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x367

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1d

    aget v3, v3, v4

    const/16 v4, 0x67

    const/16 v5, 0x67

    const/16 v6, 0x5d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x368

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1e

    aget v3, v3, v4

    const/16 v4, 0x68

    const/16 v5, 0x68

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x369

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    const/16 v4, 0x6a

    const/16 v5, 0x6a

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x36a

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x20

    aget v3, v3, v4

    const/16 v4, 0x6b

    const/16 v5, 0x6b

    const/16 v6, 0x142

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x36b

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x21

    aget v3, v3, v4

    const/16 v4, 0x6c

    const/16 v5, 0x6c

    const/16 v6, 0x141

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x36c

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x22

    aget v3, v3, v4

    const/16 v4, 0xf4

    const/16 v5, 0x22

    const/16 v6, 0x24

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x36d

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    const/16 v4, 0xa7

    const/16 v5, 0x21

    const/16 v6, 0xdf

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x36e

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x24

    aget v3, v3, v4

    const/16 v4, -0xff

    const/16 v5, -0xff

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x36f

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x25

    aget v3, v3, v4

    const/16 v4, 0x148

    const/16 v5, 0x27

    const/16 v6, 0xa4

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x370

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x26

    aget v3, v3, v4

    const/16 v4, 0x79

    const/16 v5, 0x79

    const/16 v6, 0x3e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x371

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    const/16 v4, 0x78

    const/16 v5, 0x78

    const/16 v6, 0x23

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x372

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x28

    aget v3, v3, v4

    const/16 v4, 0x63

    const/16 v5, 0x63

    const/16 v6, 0x26

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x373

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x29

    aget v3, v3, v4

    const/16 v4, 0x76

    const/16 v5, 0x76

    const/16 v6, 0x40

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x374

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2a

    aget v3, v3, v4

    const/16 v4, 0x62

    const/16 v5, 0x62

    const/16 v6, 0x7b

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x375

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    const/16 v6, 0x7d

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x376

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2c

    aget v3, v3, v4

    const/16 v4, 0x6d

    const/16 v5, 0x6d

    const/16 v6, -0xff

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x377

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    const/16 v4, 0x2c

    const/16 v5, 0x3f

    const/16 v6, 0x3c

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x378

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2e

    aget v3, v3, v4

    const/16 v4, 0x2e

    const/16 v5, 0x3a

    const/16 v6, 0x3e

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x379

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyCodes:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    const/16 v6, 0x2a

    const/16 v7, -0xff

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;-><init>(SIIIIII)V

    aput-object v0, v9, v10

    sput-object v9, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->HWKEY_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    .line 1857
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;

    return-void

    .line 36
    :array_6e72
    .array-data 0x4
        0xc7t 0x2t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0xd8t 0x2t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0xd9t 0x2t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0x85t 0x3t 0x0t 0x0t
    .end array-data

    .line 37
    :array_6e92
    .array-data 0x4
        0xb1t 0x3t 0x0t 0x0t
        0xb5t 0x3t 0x0t 0x0t
        0xb7t 0x3t 0x0t 0x0t
        0xb9t 0x3t 0x0t 0x0t
        0xbft 0x3t 0x0t 0x0t
        0xc9t 0x3t 0x0t 0x0t
        0xc5t 0x3t 0x0t 0x0t
    .end array-data

    .line 38
    :array_6ea4
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_6eb2
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_6ec0
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_6ece
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_6edc
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_6eea
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
    .end array-data

    :array_6ef8
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_6f06
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6f14
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_6f22
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_6f30
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_6f3e
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_6f4c
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6f5a
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_6f68
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_6f76
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_6f84
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_6f92
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
    .end array-data

    :array_6fa0
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
    .end array-data

    :array_6fae
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_6fbc
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6fca
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_6fd8
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_6fe6
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_6ff4
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_7002
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_7010
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_701e
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_702c
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_703a
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_7048
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7056
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7064
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7072
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_7080
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_708e
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_709c
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_70aa
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_70b8
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x7t 0x1t 0x0t 0x0t
    .end array-data

    :array_70c6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_70d4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_70e2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x3at 0x1t 0x0t 0x0t
    .end array-data

    :array_70f0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x44t 0x1t 0x0t 0x0t
    .end array-data

    :array_70fe
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_710c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x55t 0x1t 0x0t 0x0t
    .end array-data

    :array_711a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x5bt 0x1t 0x0t 0x0t
    .end array-data

    :array_7128
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_7136
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
    .end array-data

    :array_7144
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7at 0x1t 0x0t 0x0t
    .end array-data

    :array_7152
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7160
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_716e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_717c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_718a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_7198
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_71a6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe5t 0x0t 0x0t 0x0t
    .end array-data

    :array_71b4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x6ft 0x1t 0x0t 0x0t
    .end array-data

    :array_71c2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xdt 0x1t 0x0t 0x0t
    .end array-data

    :array_71d0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xft 0x1t 0x0t 0x0t
    .end array-data

    :array_71de
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x1bt 0x1t 0x0t 0x0t
    .end array-data

    :array_71ec
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x3et 0x1t 0x0t 0x0t
    .end array-data

    :array_71fa
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
    .end array-data

    :array_7208
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x59t 0x1t 0x0t 0x0t
    .end array-data

    :array_7216
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x61t 0x1t 0x0t 0x0t
    .end array-data

    :array_7224
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x65t 0x1t 0x0t 0x0t
    .end array-data

    :array_7232
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7et 0x1t 0x0t 0x0t
    .end array-data

    :array_7240
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_724e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_725c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_726a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7278
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_7286
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xd8t 0x2t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x3t 0x1t 0x0t 0x0t
    .end array-data

    :array_7294
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xd8t 0x2t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x1ft 0x1t 0x0t 0x0t
    .end array-data

    :array_72a2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x5t 0x1t 0x0t 0x0t
    .end array-data

    :array_72b0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x19t 0x1t 0x0t 0x0t
    .end array-data

    :array_72be
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x2ft 0x1t 0x0t 0x0t
    .end array-data

    :array_72cc
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x73t 0x1t 0x0t 0x0t
    .end array-data

    :array_72da
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_72e8
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_72f6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_7304
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7312
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7320
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xd9t 0x2t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x17t 0x1t 0x0t 0x0t
    .end array-data

    :array_732e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xd9t 0x2t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
    .end array-data

    :array_733c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xd9t 0x2t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7ct 0x1t 0x0t 0x0t
    .end array-data

    :array_734a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x51t 0x1t 0x0t 0x0t
    .end array-data

    :array_7358
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x71t 0x1t 0x0t 0x0t
    .end array-data

    :array_7366
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
    .end array-data

    :array_7374
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x23t 0x1t 0x0t 0x0t
    .end array-data

    :array_7382
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x37t 0x1t 0x0t 0x0t
    .end array-data

    :array_7390
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x3ct 0x1t 0x0t 0x0t
    .end array-data

    :array_739e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x46t 0x1t 0x0t 0x0t
    .end array-data

    :array_73ac
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x57t 0x1t 0x0t 0x0t
    .end array-data

    :array_73ba
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x5ft 0x1t 0x0t 0x0t
    .end array-data

    :array_73c8
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x63t 0x1t 0x0t 0x0t
    .end array-data

    :array_73d6
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_73e4
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_73f2
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_7400
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_740e
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_741c
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_742a
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_7438
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_7446
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_7454
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_7462
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_7470
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
    .end array-data

    :array_747e
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
    .end array-data

    :array_748c
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_749a
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_74a8
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_74b6
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_74c4
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_74d2
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_74e0
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_74ee
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_74fc
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_750a
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_7518
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_7526
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
    .end array-data

    :array_7534
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7542
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7550
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_755e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_756c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_757a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7588
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_7596
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_75a4
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_75b2
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_75c0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_75ce
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_75dc
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_75ea
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_75f8
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7606
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7614
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_7622
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_7630
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_763e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_764c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
    .end array-data

    :array_765a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_7668
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7676
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7684
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_7692
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_76a0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_76ae
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_76bc
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_76ca
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_76d8
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_76e6
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_76f4
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7702
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_7710
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_771e
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_772c
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_773a
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7748
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_7756
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_7764
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7772
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_7780
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
    .end array-data

    :array_778e
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_779c
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_77aa
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_77b8
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_77c6
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_77d4
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_77e2
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_77f0
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_77fe
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_780c
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_781a
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_7828
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7836
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_7844
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_7852
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7860
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_786e
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_787c
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_788a
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_7898
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_78a6
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_78b4
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
    .end array-data

    :array_78c2
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_78d0
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xdt 0x1t 0x0t 0x0t
    .end array-data

    :array_78de
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x61t 0x1t 0x0t 0x0t
    .end array-data

    :array_78ec
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7et 0x1t 0x0t 0x0t
    .end array-data

    :array_78fa
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7908
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_7916
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x7t 0x1t 0x0t 0x0t
    .end array-data

    :array_7924
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x44t 0x1t 0x0t 0x0t
    .end array-data

    :array_7932
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x5bt 0x1t 0x0t 0x0t
    .end array-data

    :array_7940
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7at 0x1t 0x0t 0x0t
    .end array-data

    :array_794e
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_795c
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_796a
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_7978
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7986
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7994
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_79a2
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_79b0
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_79be
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_79cc
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x1dt 0x1t 0x0t 0x0t
    .end array-data

    :array_79da
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_79e8
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_79f6
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_7a04
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7a12
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7a20
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7a2e
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7a3c
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_7a4a
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_7a58
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_7a66
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
    .end array-data

    :array_7a74
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7a82
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_7a90
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_7a9e
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7aac
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_7aba
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7ac8
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_7ad6
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_7ae4
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_7af2
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_7b00
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_7b0e
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
    .end array-data

    :array_7b1c
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7b2a
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_7b38
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7b46
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_7b54
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_7b62
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7b70
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_7b7e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7b8c
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_7b9a
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_7ba8
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_7bb6
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_7bc4
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
    .end array-data

    :array_7bd2
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_7be0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7bee
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_7bfc
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_7c0a
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7c18
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7c26
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7c34
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_7c42
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_7c50
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7c5e
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7c6c
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x81t 0x1et 0x0t 0x0t
    .end array-data

    :array_7c7a
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xf3t 0x1et 0x0t 0x0t
    .end array-data

    :array_7c88
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7c96
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
    .end array-data

    :array_7ca4
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7cb2
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_7cc0
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_7cce
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_7cdc
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
    .end array-data

    :array_7cea
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7cf8
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_7d06
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_7d14
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_7d22
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_7d30
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_7d3e
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7d4c
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_7d5a
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_7d68
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7d76
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_7d84
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
    .end array-data

    :array_7d92
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7da0
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_7dae
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7dbc
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_7dca
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_7dd8
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7de6
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7df4
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x81t 0x1et 0x0t 0x0t
    .end array-data

    :array_7e02
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xf3t 0x1et 0x0t 0x0t
    .end array-data

    :array_7e10
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7e1e
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
    .end array-data

    :array_7e2c
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_7e3a
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_7e48
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_7e56
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_7e64
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
    .end array-data

    :array_7e72
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7e80
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_7e8e
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_7e9c
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_7eaa
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_7eb8
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_7ec6
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7ed4
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_7ee2
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_7ef0
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7efe
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_7f0c
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
    .end array-data

    :array_7f1a
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7f28
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_7f36
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0xb1t 0x3t 0x0t 0x0t
        0xact 0x3t 0x0t 0x0t
    .end array-data

    :array_7f44
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0xb5t 0x3t 0x0t 0x0t
        0xadt 0x3t 0x0t 0x0t
    .end array-data

    :array_7f52
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0xb7t 0x3t 0x0t 0x0t
        0xaet 0x3t 0x0t 0x0t
    .end array-data

    :array_7f60
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0xb9t 0x3t 0x0t 0x0t
        0xaft 0x3t 0x0t 0x0t
    .end array-data

    :array_7f6e
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0xbft 0x3t 0x0t 0x0t
        0xcct 0x3t 0x0t 0x0t
    .end array-data

    :array_7f7c
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0xc9t 0x3t 0x0t 0x0t
        0xcet 0x3t 0x0t 0x0t
    .end array-data

    :array_7f8a
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0xc5t 0x3t 0x0t 0x0t
        0xcdt 0x3t 0x0t 0x0t
    .end array-data

    :array_7f98
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x85t 0x3t 0x0t 0x0t
        0xb9t 0x3t 0x0t 0x0t
        0x90t 0x3t 0x0t 0x0t
    .end array-data

    :array_7fa6
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x85t 0x3t 0x0t 0x0t
        0xc5t 0x3t 0x0t 0x0t
        0xb0t 0x3t 0x0t 0x0t
    .end array-data

    :array_7fb4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0xb9t 0x3t 0x0t 0x0t
        0xcat 0x3t 0x0t 0x0t
    .end array-data

    :array_7fc2
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0xc5t 0x3t 0x0t 0x0t
        0xcbt 0x3t 0x0t 0x0t
    .end array-data

    :array_7fd0
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xdt 0x1t 0x0t 0x0t
    .end array-data

    :array_7fde
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xft 0x1t 0x0t 0x0t
    .end array-data

    :array_7fec
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x1bt 0x1t 0x0t 0x0t
    .end array-data

    :array_7ffa
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
    .end array-data

    :array_8008
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x59t 0x1t 0x0t 0x0t
    .end array-data

    :array_8016
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x61t 0x1t 0x0t 0x0t
    .end array-data

    :array_8024
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x65t 0x1t 0x0t 0x0t
    .end array-data

    :array_8032
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7et 0x1t 0x0t 0x0t
    .end array-data

    :array_8040
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_804e
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_805c
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_806a
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xd8t 0x2t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x3t 0x1t 0x0t 0x0t
    .end array-data

    :array_8078
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x6ft 0x1t 0x0t 0x0t
    .end array-data

    :array_8086
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x5t 0x1t 0x0t 0x0t
    .end array-data

    :array_8094
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x19t 0x1t 0x0t 0x0t
    .end array-data

    :array_80a2
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xd9t 0x2t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7ct 0x1t 0x0t 0x0t
    .end array-data

    :array_80b0
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_80be
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x7t 0x1t 0x0t 0x0t
    .end array-data

    :array_80cc
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_80da
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_80e8
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x3at 0x1t 0x0t 0x0t
    .end array-data

    :array_80f6
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x44t 0x1t 0x0t 0x0t
    .end array-data

    :array_8104
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_8112
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x55t 0x1t 0x0t 0x0t
    .end array-data

    :array_8120
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x5bt 0x1t 0x0t 0x0t
    .end array-data

    :array_812e
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_813c
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
    .end array-data

    :array_814a
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7at 0x1t 0x0t 0x0t
    .end array-data

    :array_8158
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x51t 0x1t 0x0t 0x0t
    .end array-data

    :array_8166
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x71t 0x1t 0x0t 0x0t
    .end array-data

    :array_8174
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_8182
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_8190
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_819e
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_81ac
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
    .end array-data

    :array_81ba
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x5ft 0x1t 0x0t 0x0t
    .end array-data

    :array_81c8
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x63t 0x1t 0x0t 0x0t
    .end array-data

    :array_81d6
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_81e4
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_81f2
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_8200
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_820e
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_821c
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
    .end array-data

    :array_822a
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_8238
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_8246
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_8254
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_8262
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_8270
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_827e
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_828c
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_829a
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_82a8
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_82b6
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_82c4
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_82d2
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_82e0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_82ee
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_82fc
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_830a
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8318
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_8326
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_8334
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_8342
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_8350
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
    .end array-data

    :array_835e
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
    .end array-data

    :array_836c
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
    .end array-data

    :array_837a
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_8388
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_8396
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_83a4
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_83b2
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_83c0
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_83ce
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_83dc
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_83ea
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_83f8
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_8406
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_8414
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_8422
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_8430
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_843e
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_844c
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_845a
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_8468
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
    .end array-data

    :array_8476
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x5ft 0x1t 0x0t 0x0t
    .end array-data

    :array_8484
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_8492
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_84a0
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_84ae
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_84bc
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xdt 0x1t 0x0t 0x0t
    .end array-data

    :array_84ca
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xft 0x1t 0x0t 0x0t
    .end array-data

    :array_84d8
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x1bt 0x1t 0x0t 0x0t
    .end array-data

    :array_84e6
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x3et 0x1t 0x0t 0x0t
    .end array-data

    :array_84f4
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
    .end array-data

    :array_8502
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x59t 0x1t 0x0t 0x0t
    .end array-data

    :array_8510
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x61t 0x1t 0x0t 0x0t
    .end array-data

    :array_851e
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x65t 0x1t 0x0t 0x0t
    .end array-data

    :array_852c
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7et 0x1t 0x0t 0x0t
    .end array-data

    :array_853a
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_8548
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_8556
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_8564
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xd8t 0x2t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x3t 0x1t 0x0t 0x0t
    .end array-data

    :array_8572
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x6ft 0x1t 0x0t 0x0t
    .end array-data

    :array_8580
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x5t 0x1t 0x0t 0x0t
    .end array-data

    :array_858e
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x19t 0x1t 0x0t 0x0t
    .end array-data

    :array_859c
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xd9t 0x2t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7ct 0x1t 0x0t 0x0t
    .end array-data

    :array_85aa
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_85b8
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x7t 0x1t 0x0t 0x0t
    .end array-data

    :array_85c6
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_85d4
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_85e2
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x3at 0x1t 0x0t 0x0t
    .end array-data

    :array_85f0
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x44t 0x1t 0x0t 0x0t
    .end array-data

    :array_85fe
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_860c
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x55t 0x1t 0x0t 0x0t
    .end array-data

    :array_861a
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x5bt 0x1t 0x0t 0x0t
    .end array-data

    :array_8628
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_8636
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
    .end array-data

    :array_8644
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7at 0x1t 0x0t 0x0t
    .end array-data

    :array_8652
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x51t 0x1t 0x0t 0x0t
    .end array-data

    :array_8660
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x71t 0x1t 0x0t 0x0t
    .end array-data

    :array_866e
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x5ft 0x1t 0x0t 0x0t
    .end array-data

    :array_867c
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
    .end array-data

    :array_868a
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x5ft 0x1t 0x0t 0x0t
    .end array-data

    :array_8698
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_86a6
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_86b4
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_86c2
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_86d0
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xdt 0x1t 0x0t 0x0t
    .end array-data

    :array_86de
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xft 0x1t 0x0t 0x0t
    .end array-data

    :array_86ec
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x1bt 0x1t 0x0t 0x0t
    .end array-data

    :array_86fa
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x3et 0x1t 0x0t 0x0t
    .end array-data

    :array_8708
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
    .end array-data

    :array_8716
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x59t 0x1t 0x0t 0x0t
    .end array-data

    :array_8724
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x61t 0x1t 0x0t 0x0t
    .end array-data

    :array_8732
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x65t 0x1t 0x0t 0x0t
    .end array-data

    :array_8740
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7et 0x1t 0x0t 0x0t
    .end array-data

    :array_874e
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_875c
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_876a
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_8778
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xd8t 0x2t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x3t 0x1t 0x0t 0x0t
    .end array-data

    :array_8786
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x6ft 0x1t 0x0t 0x0t
    .end array-data

    :array_8794
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x5t 0x1t 0x0t 0x0t
    .end array-data

    :array_87a2
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x19t 0x1t 0x0t 0x0t
    .end array-data

    :array_87b0
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xd9t 0x2t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7ct 0x1t 0x0t 0x0t
    .end array-data

    :array_87be
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_87cc
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x7t 0x1t 0x0t 0x0t
    .end array-data

    :array_87da
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_87e8
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_87f6
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x3at 0x1t 0x0t 0x0t
    .end array-data

    :array_8804
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x44t 0x1t 0x0t 0x0t
    .end array-data

    :array_8812
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_8820
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x55t 0x1t 0x0t 0x0t
    .end array-data

    :array_882e
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x5bt 0x1t 0x0t 0x0t
    .end array-data

    :array_883c
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_884a
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
    .end array-data

    :array_8858
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7at 0x1t 0x0t 0x0t
    .end array-data

    :array_8866
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x51t 0x1t 0x0t 0x0t
    .end array-data

    :array_8874
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x71t 0x1t 0x0t 0x0t
    .end array-data

    :array_8882
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x5ft 0x1t 0x0t 0x0t
    .end array-data

    :array_8890
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_889e
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_88ac
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_88ba
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_88c8
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_88d6
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_88e4
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_88f2
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_8900
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_890e
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_891c
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
    .end array-data

    :array_892a
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8938
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    :array_8946
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8954
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_8962
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_8970
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_897e
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_898c
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_899a
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_89a8
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_89b6
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_89c4
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_89d2
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    :array_89e0
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
    .end array-data

    :array_89ee
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
    .end array-data

    :array_89fc
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data

    :array_8a0a
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
    .end array-data

    :array_8a18
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x81t 0x1et 0x0t 0x0t
    .end array-data

    :array_8a26
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xf3t 0x1et 0x0t 0x0t
    .end array-data

    :array_8a34
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8a42
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
    .end array-data

    :array_8a50
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
    .end array-data

    :array_8a5e
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data

    :array_8a6c
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
    .end array-data

    :array_8a7a
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    :array_8a88
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
    .end array-data

    :array_8a96
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
    .end array-data

    :array_8aa4
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
    .end array-data

    :array_8ab2
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
    .end array-data

    :array_8ac0
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_8ace
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
    .end array-data

    :array_8adc
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    :array_8aea
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
    .end array-data

    :array_8af8
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
    .end array-data

    :array_8b06
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
    .end array-data

    :array_8b14
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_8b22
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_8b30
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
    .end array-data

    :array_8b3e
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8b4c
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    .line 795
    :array_8b5a
    .array-data 0x4
        0x44t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1860
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->DEBUG:Z

    .line 13
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->INFO:Z

    .line 14
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->ERROR:Z

    .line 1858
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyInfoHash:Ljava/util/HashMap;

    .line 1861
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->makeHWKeyInfoHashMap()I

    move-result v0

    if-nez v0, :cond_19

    .line 1865
    :cond_19
    return-void
.end method

.method public static getInstance()Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;
    .registers 1

    .prologue
    .line 1868
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;

    return-object v0
.end method

.method private makeHWKeyInfoHashMap()I
    .registers 8

    .prologue
    .line 1873
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyInfoHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1878
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->HWKEY_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_3a

    .line 1879
    const-wide/16 v0, 0x0

    .line 1880
    .local v0, hashKey:J
    const/4 v3, 0x0

    .line 1881
    .local v3, value:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->HWKEY_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    aget-object v4, v4, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mLanguageDBID:S
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;)S

    move-result v4

    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->HWKEY_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    aget-object v5, v5, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mCountryCode:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;)I

    move-result v5

    sget-object v6, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->HWKEY_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    aget-object v6, v6, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->mKeyCode:I
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->makeHashKey(SII)J

    move-result-wide v0

    .line 1883
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->HWKEY_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    aget-object v3, v4, v2

    .line 1885
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyInfoHash:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1888
    .end local v0           #hashKey:J
    .end local v3           #value:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;
    :cond_3a
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyInfoHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    return v4
.end method

.method private makeHashKey(SII)J
    .registers 10
    .parameter "languageDBID"
    .parameter "countryCode"
    .parameter "keyCode"

    .prologue
    .line 1900
    const-wide/16 v1, 0x0

    .line 1901
    .local v1, hashKey:J
    const/16 v4, 0x18

    if-eq p1, v4, :cond_12

    const/16 v4, 0x13

    if-eq p1, v4, :cond_12

    const/16 v4, 0x26

    if-eq p1, v4, :cond_12

    const/16 v4, 0x27

    if-ne p1, v4, :cond_1f

    .line 1905
    :cond_12
    const/16 p1, 0x9

    .line 1906
    const/4 p2, 0x1

    .line 1931
    :cond_15
    :goto_15
    mul-int/lit16 v4, p3, 0x3e8

    add-int/2addr v4, p1

    const v5, 0xf4240

    mul-int/2addr v5, p2

    add-int/2addr v4, v5

    int-to-long v1, v4

    .line 1932
    return-wide v1

    .line 1907
    :cond_1f
    const/16 v4, 0x61

    if-ne p1, v4, :cond_26

    .line 1908
    const/16 p1, 0x19

    goto :goto_15

    .line 1910
    :cond_26
    const/16 v4, 0x15

    if-ne p1, v4, :cond_2e

    .line 1911
    const/16 p1, 0x9

    .line 1912
    const/4 p2, 0x2

    goto :goto_15

    .line 1914
    :cond_2e
    const/16 v4, 0x59

    if-ne p1, v4, :cond_35

    .line 1915
    const/16 p1, 0x80

    goto :goto_15

    .line 1916
    :cond_35
    const/16 v4, 0x16

    if-ne p1, v4, :cond_4c

    .line 1917
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 1918
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1920
    .local v0, country:Ljava/lang/String;
    const-string v4, "BR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1921
    const/16 p2, 0xb

    goto :goto_15

    .line 1923
    .end local v0           #country:Ljava/lang/String;
    .end local v3           #locale:Ljava/util/Locale;
    :cond_4c
    const/16 v4, 0xa

    if-ne p1, v4, :cond_15

    .line 1924
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 1925
    .restart local v3       #locale:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1927
    .restart local v0       #country:Ljava/lang/String;
    const-string v4, "US"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1928
    const/4 p2, 0x1

    goto :goto_15
.end method


# virtual methods
.method public getHWKeyInfo(SII)Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;
    .registers 12
    .parameter "languageDBID"
    .parameter "countryCode"
    .parameter "keyCode"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x9

    .line 1936
    const/4 v2, 0x0

    .line 1938
    .local v2, values:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->makeHashKey(SII)J

    move-result-wide v0

    .line 1940
    .local v0, hashKey:J
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyInfoHash:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #values:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;
    check-cast v2, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    .line 1942
    .restart local v2       #values:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;
    if-nez v2, :cond_41

    .line 1943
    const/16 v3, 0x8

    if-ne p1, v3, :cond_42

    .line 1944
    invoke-direct {p0, v5, v7, p3}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->makeHashKey(SII)J

    move-result-wide v0

    .line 1958
    :goto_1f
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyInfoHash:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #values:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;
    check-cast v2, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    .line 1959
    .restart local v2       #values:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;
    if-nez v2, :cond_41

    .line 1960
    const/16 v3, 0x12

    if-ne p1, v3, :cond_64

    .line 1961
    invoke-direct {p0, v5, v7, p3}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->makeHashKey(SII)J

    move-result-wide v0

    .line 1965
    :goto_35
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mKeyInfoHash:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #values:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;
    check-cast v2, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    .line 1969
    .restart local v2       #values:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;
    :cond_41
    return-object v2

    .line 1946
    :cond_42
    const/16 v3, 0x22

    if-ne p1, v3, :cond_4d

    .line 1947
    const/16 v3, 0x19

    invoke-direct {p0, v3, v6, p3}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->makeHashKey(SII)J

    move-result-wide v0

    goto :goto_1f

    .line 1949
    :cond_4d
    const/4 v3, 0x6

    if-eq p1, v3, :cond_58

    const/16 v3, 0x14

    if-eq p1, v3, :cond_58

    const/16 v3, 0x1d

    if-ne p1, v3, :cond_5f

    .line 1952
    :cond_58
    const/16 v3, 0xb

    invoke-direct {p0, v3, v6, p3}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->makeHashKey(SII)J

    move-result-wide v0

    goto :goto_1f

    .line 1955
    :cond_5f
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->makeHashKey(SII)J

    move-result-wide v0

    goto :goto_1f

    .line 1963
    :cond_64
    const/4 v3, 0x2

    invoke-direct {p0, v5, v3, p3}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->makeHashKey(SII)J

    move-result-wide v0

    goto :goto_35
.end method

.method public getNordicSymbolPopupKey(I)I
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 1973
    move v0, p1

    .line 1974
    .local v0, popupCode:I
    sparse-switch p1, :sswitch_data_14

    .line 1999
    :goto_4
    return v0

    .line 1977
    :sswitch_5
    const/16 v0, 0x40

    .line 1978
    goto :goto_4

    .line 1982
    :sswitch_8
    const/16 v0, 0x7b

    .line 1983
    goto :goto_4

    .line 1986
    :sswitch_b
    const/16 v0, 0x5b

    .line 1987
    goto :goto_4

    .line 1990
    :sswitch_e
    const/16 v0, 0x5d

    .line 1991
    goto :goto_4

    .line 1994
    :sswitch_11
    const/16 v0, 0x7d

    .line 1995
    goto :goto_4

    .line 1974
    :sswitch_data_14
    .sparse-switch
        0x22 -> :sswitch_5
        0x28 -> :sswitch_b
        0x29 -> :sswitch_e
        0x2f -> :sswitch_8
        0x30 -> :sswitch_11
        0x32 -> :sswitch_5
        0x37 -> :sswitch_8
        0x38 -> :sswitch_b
        0x39 -> :sswitch_e
        0x3d -> :sswitch_11
    .end sparse-switch
.end method

.method public getUmlautCode(IIII)I
    .registers 13
    .parameter "languageDBID"
    .parameter "countryCode"
    .parameter "umlautSymCode"
    .parameter "keyCode"

    .prologue
    .line 748
    const/16 v3, 0x18

    if-eq p1, v3, :cond_10

    const/16 v3, 0x13

    if-eq p1, v3, :cond_10

    const/16 v3, 0x26

    if-eq p1, v3, :cond_10

    const/16 v3, 0x27

    if-ne p1, v3, :cond_4b

    .line 752
    :cond_10
    const/16 p1, 0x9

    .line 753
    const/4 p2, 0x1

    .line 782
    :cond_13
    :goto_13
    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautMap:Ljava/util/HashMap;

    const-string v4, "0x%02x0x%02x0x%04x0x%04x"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 789
    .local v2, result:Ljava/lang/Integer;
    if-eqz v2, :cond_48

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_99

    .line 790
    :cond_48
    const/16 v3, -0xff

    .line 792
    :goto_4a
    return v3

    .line 754
    .end local v2           #result:Ljava/lang/Integer;
    :cond_4b
    const/16 v3, 0x61

    if-ne p1, v3, :cond_52

    .line 755
    const/16 p1, 0x19

    goto :goto_13

    .line 757
    :cond_52
    const/16 v3, 0x9

    if-eq p1, v3, :cond_5a

    const/16 v3, 0x15

    if-ne p1, v3, :cond_5e

    .line 759
    :cond_5a
    const/16 p1, 0x9

    .line 760
    const/4 p2, 0x2

    goto :goto_13

    .line 762
    :cond_5e
    const/16 v3, 0x59

    if-ne p1, v3, :cond_65

    .line 763
    const/16 p1, 0x80

    goto :goto_13

    .line 764
    :cond_65
    const/16 v3, 0xb

    if-ne p1, v3, :cond_6b

    .line 765
    const/4 p1, 0x6

    goto :goto_13

    .line 766
    :cond_6b
    const/16 v3, 0x16

    if-ne p1, v3, :cond_82

    .line 767
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 768
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, country:Ljava/lang/String;
    const-string v3, "BR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 771
    const/16 p2, 0xb

    goto :goto_13

    .line 773
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #locale:Ljava/util/Locale;
    :cond_82
    const/16 v3, 0xa

    if-ne p1, v3, :cond_13

    .line 774
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 775
    .restart local v1       #locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 777
    .restart local v0       #country:Ljava/lang/String;
    const-string v3, "US"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 778
    const/4 p2, 0x1

    goto/16 :goto_13

    .line 792
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #locale:Ljava/util/Locale;
    .restart local v2       #result:Ljava/lang/Integer;
    :cond_99
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4a
.end method

.method public isGreekKey(I)Z
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 744
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mGreekList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUmlautSymbol(III)Z
    .registers 6
    .parameter "keyCode"
    .parameter "languageDBID"
    .parameter "countryCode"

    .prologue
    .line 735
    const/16 v0, 0x9

    if-ne p2, v0, :cond_7

    const/4 v0, 0x2

    if-eq p3, v0, :cond_b

    :cond_7
    const/16 v0, 0x15

    if-ne p2, v0, :cond_15

    :cond_b
    const/16 v0, 0x22

    if-eq p1, v0, :cond_13

    const/16 v0, 0x27

    if-ne p1, v0, :cond_15

    .line 738
    :cond_13
    const/4 v0, 0x1

    .line 740
    :goto_14
    return v0

    :cond_15
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->mUmlautSymbolList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_14
.end method
