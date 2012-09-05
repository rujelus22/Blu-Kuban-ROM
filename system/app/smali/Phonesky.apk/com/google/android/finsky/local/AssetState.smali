.class public final enum Lcom/google/android/finsky/local/AssetState;
.super Ljava/lang/Enum;
.source "AssetState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/local/AssetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/local/AssetState;

.field public static final enum DOWNLOADING:Lcom/google/android/finsky/local/AssetState;

.field public static final enum DOWNLOAD_CANCELLED:Lcom/google/android/finsky/local/AssetState;

.field public static final enum DOWNLOAD_CANCEL_PENDING:Lcom/google/android/finsky/local/AssetState;

.field public static final enum DOWNLOAD_DECLINED:Lcom/google/android/finsky/local/AssetState;

.field public static final enum DOWNLOAD_FAILED:Lcom/google/android/finsky/local/AssetState;

.field public static final enum DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

.field public static final enum INSTALLED:Lcom/google/android/finsky/local/AssetState;

.field public static final enum INSTALLING:Lcom/google/android/finsky/local/AssetState;

.field public static final enum INSTALL_FAILED:Lcom/google/android/finsky/local/AssetState;

.field public static final enum UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

.field public static final enum UNINSTALLING:Lcom/google/android/finsky/local/AssetState;

.field public static final enum UNINSTALL_FAILED:Lcom/google/android/finsky/local/AssetState;

.field private static final sTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/local/AssetState;",
            "[",
            "Lcom/google/android/finsky/local/AssetState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 17
    new-instance v0, Lcom/google/android/finsky/local/AssetState;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/finsky/local/AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOADING:Lcom/google/android/finsky/local/AssetState;

    .line 18
    new-instance v0, Lcom/google/android/finsky/local/AssetState;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/finsky/local/AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    .line 19
    new-instance v0, Lcom/google/android/finsky/local/AssetState;

    const-string v1, "UNINSTALLED"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/finsky/local/AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    .line 20
    new-instance v0, Lcom/google/android/finsky/local/AssetState;

    const-string v1, "INSTALL_FAILED"

    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/finsky/local/AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALL_FAILED:Lcom/google/android/finsky/local/AssetState;

    .line 21
    new-instance v0, Lcom/google/android/finsky/local/AssetState;

    const-string v1, "DOWNLOAD_FAILED"

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/finsky/local/AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_FAILED:Lcom/google/android/finsky/local/AssetState;

    .line 22
    new-instance v0, Lcom/google/android/finsky/local/AssetState;

    const-string v1, "INSTALLING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/finsky/local/AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALLING:Lcom/google/android/finsky/local/AssetState;

    .line 23
    new-instance v0, Lcom/google/android/finsky/local/AssetState;

    const-string v1, "UNINSTALLING"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->UNINSTALLING:Lcom/google/android/finsky/local/AssetState;

    .line 24
    new-instance v0, Lcom/google/android/finsky/local/AssetState;

    const-string v1, "UNINSTALL_FAILED"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->UNINSTALL_FAILED:Lcom/google/android/finsky/local/AssetState;

    .line 25
    new-instance v0, Lcom/google/android/finsky/local/AssetState;

    const-string v1, "DOWNLOAD_PENDING"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    .line 26
    new-instance v0, Lcom/google/android/finsky/local/AssetState;

    const-string v1, "DOWNLOAD_DECLINED"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_DECLINED:Lcom/google/android/finsky/local/AssetState;

    .line 27
    new-instance v0, Lcom/google/android/finsky/local/AssetState;

    const-string v1, "DOWNLOAD_CANCEL_PENDING"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/google/android/finsky/local/AssetState;

    .line 28
    new-instance v0, Lcom/google/android/finsky/local/AssetState;

    const-string v1, "DOWNLOAD_CANCELLED"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/local/AssetState;

    .line 16
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/android/finsky/local/AssetState;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOADING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/local/AssetState;->INSTALL_FAILED:Lcom/google/android/finsky/local/AssetState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_FAILED:Lcom/google/android/finsky/local/AssetState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/finsky/local/AssetState;->INSTALLING:Lcom/google/android/finsky/local/AssetState;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->UNINSTALLING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->UNINSTALL_FAILED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_DECLINED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/local/AssetState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->$VALUES:[Lcom/google/android/finsky/local/AssetState;

    .line 64
    new-instance v0, Lcom/google/android/finsky/local/AssetState$1;

    invoke-direct {v0}, Lcom/google/android/finsky/local/AssetState$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/local/AssetState;->sTransitions:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p3, p0, Lcom/google/android/finsky/local/AssetState;->mValue:I

    .line 133
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/local/AssetState;
    .registers 2
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/google/android/finsky/local/AssetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/AssetState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/local/AssetState;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->$VALUES:[Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/local/AssetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/local/AssetState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/finsky/local/AssetState;->mValue:I

    return v0
.end method

.method public isDownloadingOrInstalling()Z
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALLING:Lcom/google/android/finsky/local/AssetState;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOADING:Lcom/google/android/finsky/local/AssetState;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTransient()Z
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOADING:Lcom/google/android/finsky/local/AssetState;

    if-eq p0, v0, :cond_14

    sget-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALLING:Lcom/google/android/finsky/local/AssetState;

    if-eq p0, v0, :cond_14

    sget-object v0, Lcom/google/android/finsky/local/AssetState;->UNINSTALLING:Lcom/google/android/finsky/local/AssetState;

    if-eq p0, v0, :cond_14

    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    if-eq p0, v0, :cond_14

    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/google/android/finsky/local/AssetState;

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isUninstallable()Z
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isValidTransition(Lcom/google/android/finsky/local/AssetState;)Z
    .registers 8
    .parameter "toState"

    .prologue
    .line 139
    sget-object v5, Lcom/google/android/finsky/local/AssetState;->sTransitions:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/finsky/local/AssetState;

    .line 140
    .local v4, valid:[Lcom/google/android/finsky/local/AssetState;
    move-object v0, v4

    .local v0, arr$:[Lcom/google/android/finsky/local/AssetState;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_b
    if-ge v1, v2, :cond_16

    aget-object v3, v0, v1

    .line 141
    .local v3, s:Lcom/google/android/finsky/local/AssetState;
    if-ne v3, p1, :cond_13

    .line 142
    const/4 v5, 0x1

    .line 146
    .end local v3           #s:Lcom/google/android/finsky/local/AssetState;
    :goto_12
    return v5

    .line 140
    .restart local v3       #s:Lcom/google/android/finsky/local/AssetState;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 146
    .end local v3           #s:Lcom/google/android/finsky/local/AssetState;
    :cond_16
    const/4 v5, 0x0

    goto :goto_12
.end method
