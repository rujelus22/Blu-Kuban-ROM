.class public Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;
.super Ljava/lang/Object;
.source "AxT9UmlautMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

.field public static final KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final INFO:Z

.field private mKeyIconInfoHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/16 v10, 0x65

    const/4 v9, 0x5

    const/16 v8, 0x1b

    const/16 v7, 0x6f

    const/16 v6, 0x61

    .line 38
    const/16 v0, 0x8c

    new-array v0, v0, [Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x10

    const-string v4, "\u00e0"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x10

    const-string v4, "\u00e8\u00e9"

    invoke-direct {v2, v3, v10, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x10

    const/16 v4, 0x69

    const-string v5, "\u00ec"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x10

    const-string v4, "\u00f2\u00f3"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x10

    const/16 v4, 0x75

    const-string v5, "\u00f9"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v2, 0xc

    const-string v3, "\u00e0\u00e2"

    invoke-direct {v1, v2, v6, v3}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v1, v0, v9

    const/4 v1, 0x6

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xc

    const/16 v4, 0x63

    const-string v5, "\u00e7"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xc

    const-string v4, "\u00e9\u00e8\u00ea\u00eb"

    invoke-direct {v2, v3, v10, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xc

    const/16 v4, 0x69

    const-string v5, "\u00ee\u00ef"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xc

    const-string v4, "\u00f4\u0153"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xc

    const/16 v4, 0x75

    const-string v5, "\u00f9\u00fb"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/4 v3, 0x7

    const-string v4, "\u00e4"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/4 v3, 0x7

    const-string v4, "\u00f6"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/4 v3, 0x7

    const/16 v4, 0x73

    const-string v5, "\u00df"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/4 v3, 0x7

    const/16 v4, 0x75

    const-string v5, "\u00fc"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xa

    const-string v4, "\u00e1"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xa

    const-string v4, "\u00e9"

    invoke-direct {v2, v3, v10, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xa

    const/16 v4, 0x69

    const-string v5, "\u00ed"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xa

    const/16 v4, 0x6e

    const-string v5, "\u00f1"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xa

    const-string v4, "\u00f3"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xa

    const/16 v4, 0x75

    const-string v5, "\u00fa\u00fc"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x1d

    const-string v4, "\u00e4"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x1d

    const-string v4, "\u00e9"

    invoke-direct {v2, v3, v10, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x1d

    const-string v4, "\u00f6"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x16

    const-string v4, "\u00e1\u00e2\u00e3\u00e0"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x16

    const/16 v4, 0x63

    const-string v5, "\u00e7"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x16

    const-string v4, "\u00e9\u00ea"

    invoke-direct {v2, v3, v10, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v2, 0x16

    const/16 v3, 0x69

    const-string v4, "\u00ed"

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v1, v0, v8

    const/16 v1, 0x1c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x16

    const-string v4, "\u00f3\u00f4\u00f5"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x16

    const/16 v4, 0x75

    const-string v5, "\u00fa\u00fc"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x1f

    const/16 v4, 0x63

    const-string v5, "\u00e7"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x1f

    const/16 v4, 0x67

    const-string v5, "\u011f"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x1f

    const/16 v4, 0x69

    const-string v5, "\u0131"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x1f

    const-string v4, "\u00f6"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x1f

    const/16 v4, 0x73

    const-string v5, "\u015f"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x1f

    const/16 v4, 0x75

    const-string v5, "\u00fc"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xe

    const-string v4, "\u00e1"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xe

    const-string v4, "\u00e9"

    invoke-direct {v2, v3, v10, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xe

    const/16 v4, 0x69

    const-string v5, "\u00ed"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xe

    const-string v4, "\u00f3\u00f6\u0151"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xe

    const/16 v4, 0x75

    const-string v5, "\u00fa\u00fc\u0171"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x15

    const-string v4, "\u0105"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x15

    const/16 v4, 0x63

    const-string v5, "\u0107"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x15

    const-string v4, "\u0119"

    invoke-direct {v2, v3, v10, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x15

    const/16 v4, 0x6c

    const-string v5, "\u0142"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x15

    const/16 v4, 0x6e

    const-string v5, "\u0144"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x15

    const-string v4, "\u00f3"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x15

    const/16 v4, 0x73

    const-string v5, "\u015b"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x15

    const/16 v4, 0x7a

    const-string v5, "\u017a\u017c"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const-string v3, "\u00e1"

    invoke-direct {v2, v9, v6, v3}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x63

    const-string v4, "\u010d"

    invoke-direct {v2, v9, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x64

    const-string v4, "\u010f"

    invoke-direct {v2, v9, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const-string v3, "\u00e9\u011b"

    invoke-direct {v2, v9, v10, v3}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x69

    const-string v4, "\u00ed"

    invoke-direct {v2, v9, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x6e

    const-string v4, "\u0148"

    invoke-direct {v2, v9, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const-string v3, "\u00f3"

    invoke-direct {v2, v9, v7, v3}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x72

    const-string v4, "\u0159"

    invoke-direct {v2, v9, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x73

    const-string v4, "\u0161"

    invoke-direct {v2, v9, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x74

    const-string v4, "\u0165"

    invoke-direct {v2, v9, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x75

    const-string v4, "\u00fa\u016f"

    invoke-direct {v2, v9, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x79

    const-string v4, "\u00fd"

    invoke-direct {v2, v9, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x7a

    const-string v4, "\u017e"

    invoke-direct {v2, v9, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x13

    const-string v4, "\u00e4"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x13

    const-string v4, "\u00eb"

    invoke-direct {v2, v3, v10, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x13

    const/16 v4, 0x69

    const-string v5, "\u00ef"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x13

    const-string v4, "\u00f6"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x13

    const/16 v4, 0x75

    const-string v5, "\u00fc"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x59

    const/16 v4, 0x63

    const-string v5, "\u010d\u0107"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x59

    const/16 v4, 0x64

    const-string v5, "\u0111"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x59

    const/16 v4, 0x73

    const-string v5, "\u0161"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x59

    const/16 v4, 0x7a

    const-string v5, "\u017e"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x25

    const-string v4, "\u00e4"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x25

    const-string v4, "\u00f5\u00f6"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x25

    const/16 v4, 0x73

    const-string v5, "\u0161"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x25

    const/16 v4, 0x75

    const-string v5, "\u00fc"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x25

    const/16 v4, 0x7a

    const-string v5, "\u017e"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x26

    const-string v4, "\u0101"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x26

    const/16 v4, 0x63

    const-string v5, "\u010d"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x26

    const-string v4, "\u0113"

    invoke-direct {v2, v3, v10, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x26

    const/16 v4, 0x67

    const-string v5, "\u0123"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x26

    const/16 v4, 0x69

    const-string v5, "\u012b"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x26

    const/16 v4, 0x6b

    const-string v5, "\u0137"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x26

    const/16 v4, 0x6c

    const-string v5, "\u013c"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x26

    const/16 v4, 0x6e

    const-string v5, "\u0146"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x26

    const/16 v4, 0x73

    const-string v5, "\u0161"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x26

    const/16 v4, 0x75

    const-string v5, "\u016b"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x26

    const/16 v4, 0x7a

    const-string v5, "\u017e"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x27

    const-string v4, "\u0105"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x27

    const/16 v4, 0x63

    const-string v5, "\u010d"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x27

    const-string v4, "\u0117\u0119"

    invoke-direct {v2, v3, v10, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x27

    const/16 v4, 0x69

    const-string v5, "\u012f"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x27

    const/16 v4, 0x73

    const-string v5, "\u0161"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x27

    const/16 v4, 0x75

    const-string v5, "\u016b\u0173"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x27

    const/16 v4, 0x7a

    const-string v5, "\u017e"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x18

    const-string v4, "\u0103\u00e2"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x18

    const/16 v4, 0x69

    const-string v5, "\u00ee"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x18

    const/16 v4, 0x73

    const-string v5, "\u015f"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v2, 0x18

    const/16 v3, 0x74

    const-string v4, "\u0163"

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v1, v0, v6

    const/16 v1, 0x62

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x80

    const/16 v4, 0x63

    const-string v5, "\u010d\u0107"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x80

    const/16 v4, 0x64

    const-string v5, "\u0111"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x80

    const/16 v4, 0x73

    const-string v5, "\u0161"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v2, 0x80

    const/16 v3, 0x7a

    const-string v4, "\u017e"

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v1, v0, v10

    const/16 v1, 0x66

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const-string v3, "\u00e1\u00e4"

    invoke-direct {v2, v8, v6, v3}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x63

    const-string v4, "\u010d"

    invoke-direct {v2, v8, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x64

    const-string v4, "\u010f"

    invoke-direct {v2, v8, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const-string v3, "\u00e9"

    invoke-direct {v2, v8, v10, v3}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x69

    const-string v4, "\u00ed"

    invoke-direct {v2, v8, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x6c

    const-string v4, "\u013a\u013e"

    invoke-direct {v2, v8, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x6e

    const-string v4, "\u0148"

    invoke-direct {v2, v8, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const-string v3, "\u00f3\u00f4\u00f6\u0151"

    invoke-direct {v2, v8, v7, v3}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x72

    const-string v4, "\u0155"

    invoke-direct {v2, v8, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v2, 0x73

    const-string v3, "\u0161"

    invoke-direct {v1, v8, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v1, v0, v7

    const/16 v1, 0x70

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x74

    const-string v4, "\u0165"

    invoke-direct {v2, v8, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x75

    const-string v4, "\u00fa\u00fc\u0171"

    invoke-direct {v2, v8, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x7a

    const-string v4, "\u017e"

    invoke-direct {v2, v8, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x79

    const-string v4, "\u00fd"

    invoke-direct {v2, v8, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x24

    const/16 v4, 0x63

    const-string v5, "\u010d\u0107"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x24

    const/16 v4, 0x64

    const-string v5, "\u0111"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x24

    const/16 v4, 0x73

    const-string v5, "\u0161"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x24

    const/16 v4, 0x7a

    const-string v5, "\u017e"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x22

    const/16 v4, 0x7d

    const-string v5, "\u0491"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/4 v3, 0x6

    const-string v4, "\u00e5\u00e6"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/4 v3, 0x6

    const-string v4, "\u00f8"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xb

    const-string v4, "\u00e4\u00e5"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0xb

    const-string v4, "\u00f6"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x14

    const-string v4, "\u00e5\u00e6"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x14

    const-string v4, "\u00e9"

    invoke-direct {v2, v3, v10, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x14

    const-string v4, "\u00f8"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x79

    const-string v4, "\u04af"

    invoke-direct {v2, v6, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x7a

    const-string v4, "\u04b1"

    invoke-direct {v2, v6, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x6a

    const-string v4, "\u04d9"

    invoke-direct {v2, v6, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x7b

    const-string v4, "\u04e9"

    invoke-direct {v2, v6, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x77

    const-string v4, "\u0456"

    invoke-direct {v2, v6, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x76

    const-string v4, "\u04bb"

    invoke-direct {v2, v6, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x68

    const-string v4, "\u049b"

    invoke-direct {v2, v6, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x64

    const-string v4, "\u0493"

    invoke-direct {v2, v6, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x6e

    const-string v4, "\u04a3"

    invoke-direct {v2, v6, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/4 v3, 0x3

    const/16 v4, 0x63

    const-string v5, "\u00e7"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x2d

    const/16 v4, 0x6e

    const-string v5, "\u00f1"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    const/16 v3, 0x55

    const/16 v4, 0x6e

    const-string v5, "\u00f1"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;-><init>(SILjava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    .line 209
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->DEBUG:Z

    .line 11
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->INFO:Z

    .line 12
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->ERROR:Z

    .line 210
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    .line 213
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->makeKeyIconInfoHashMap()I

    move-result v0

    if-nez v0, :cond_19

    .line 217
    :cond_19
    return-void
.end method

.method public static getInstance()Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;
    .registers 1

    .prologue
    .line 220
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    return-object v0
.end method

.method private makeHashKey(SI)J
    .registers 6
    .parameter "languageDBID"
    .parameter "keyCode"

    .prologue
    .line 252
    const-wide/16 v0, 0x0

    .line 253
    .local v0, hashKey:J
    mul-int/lit8 v2, p2, 0x64

    add-int/2addr v2, p1

    int-to-long v0, v2

    .line 254
    return-wide v0
.end method

.method private makeKeyIconInfoHashMap()I
    .registers 7

    .prologue
    .line 224
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 231
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_36

    .line 232
    const-wide/16 v0, 0x0

    .line 233
    .local v0, hashKey:J
    const/4 v3, 0x0

    .line 234
    .local v3, value:Ljava/lang/String;
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    aget-object v4, v4, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->mLanguageDBID:S
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;)S

    move-result v4

    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    aget-object v5, v5, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->mKeyCode:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->makeHashKey(SI)J

    move-result-wide v0

    .line 235
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    aget-object v4, v4, v2

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->mUmlautString:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;)Ljava/lang/String;

    move-result-object v3

    .line 237
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 240
    .end local v0           #hashKey:J
    .end local v3           #value:Ljava/lang/String;
    :cond_36
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    return v4
.end method


# virtual methods
.method public getKeyUmlautString(SI)Ljava/lang/String;
    .registers 8
    .parameter "languageDBID"
    .parameter "keyCode"

    .prologue
    .line 258
    const/4 v2, 0x0

    .line 266
    .local v2, values:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->makeHashKey(SI)J

    move-result-wide v0

    .line 268
    .local v0, hashKey:J
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->mKeyIconInfoHash:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #values:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 270
    .restart local v2       #values:Ljava/lang/String;
    if-nez v2, :cond_13

    .line 274
    :cond_13
    return-object v2
.end method

.method public hasUmlautString(S)Z
    .registers 7
    .parameter "lanugageDBID"

    .prologue
    .line 278
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->KEYICON_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;

    .local v0, arr$:[Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 279
    .local v3, umlautInfo:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;
    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->mLanguageDBID:S
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;)S

    move-result v4

    if-ne v4, p1, :cond_10

    .line 280
    const/4 v4, 0x1

    .line 283
    .end local v3           #umlautInfo:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;
    :goto_f
    return v4

    .line 278
    .restart local v3       #umlautInfo:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 283
    .end local v3           #umlautInfo:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method
