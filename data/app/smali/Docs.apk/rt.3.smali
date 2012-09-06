.class public Lrt;
.super LpM;
.source "MimeOpenerSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LpM",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 26
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "application/pdf"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "application/vnd.ms-powerpoint"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "image/tiff"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "application/msword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "image/photoshop"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "application/x-eps"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "image/x-eps"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "image/eps"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "application/eps"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "application/postscript"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "image/svg+xml"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "application/x-font-ttf"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "font/opentype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "application/dxf"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "application/illustrator"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "application/octet-stream+fnt"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "application/octet-stream+fon"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "application/x-iwork-pages-sffpages"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "application/vnd.ms-xpsdocument"

    aput-object v2, v0, v1

    sput-object v0, Lrt;->a:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lrt;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LanD;LanD;LanD;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/GViewDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/VideoDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1, p2, p3}, Lrt;->a(LanD;LanD;LanD;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, LpM;-><init>(Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method static a(LanD;LanD;LanD;)Ljava/util/Map;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/GViewDocumentOpener;",
            ">;",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/VideoDocumentOpener;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LanD",
            "<+",
            "LpO;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 53
    sget-object v3, Lrt;->a:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_a
    if-ge v1, v4, :cond_14

    aget-object v5, v3, v1

    .line 54
    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 57
    :cond_14
    sget-object v1, Lrt;->b:[Ljava/lang/String;

    array-length v3, v1

    :goto_17
    if-ge v0, v3, :cond_21

    aget-object v4, v1, v0

    .line 58
    invoke-interface {v2, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 61
    :cond_21
    sget-object v0, LkV;->c:LkV;

    invoke-virtual {v0}, LkV;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 64
    :cond_3b
    return-object v2
.end method
