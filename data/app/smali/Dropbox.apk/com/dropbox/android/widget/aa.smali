.class public final enum Lcom/dropbox/android/widget/aa;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/widget/aa;

.field public static final enum b:Lcom/dropbox/android/widget/aa;

.field public static final enum c:Lcom/dropbox/android/widget/aa;

.field public static final enum d:Lcom/dropbox/android/widget/aa;

.field public static final enum e:Lcom/dropbox/android/widget/aa;

.field public static final enum f:Lcom/dropbox/android/widget/aa;

.field private static final synthetic g:[Lcom/dropbox/android/widget/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/dropbox/android/widget/aa;

    const-string v1, "BROWSER"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/widget/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/widget/aa;->a:Lcom/dropbox/android/widget/aa;

    .line 45
    new-instance v0, Lcom/dropbox/android/widget/aa;

    const-string v1, "BROWSER_DIRONLY"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/widget/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/widget/aa;->b:Lcom/dropbox/android/widget/aa;

    .line 46
    new-instance v0, Lcom/dropbox/android/widget/aa;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/android/widget/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/widget/aa;->c:Lcom/dropbox/android/widget/aa;

    .line 47
    new-instance v0, Lcom/dropbox/android/widget/aa;

    const-string v1, "GRID_GALLERY"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/android/widget/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/widget/aa;->d:Lcom/dropbox/android/widget/aa;

    .line 48
    new-instance v0, Lcom/dropbox/android/widget/aa;

    const-string v1, "UPLOADS"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/android/widget/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/widget/aa;->e:Lcom/dropbox/android/widget/aa;

    .line 49
    new-instance v0, Lcom/dropbox/android/widget/aa;

    const-string v1, "SEARCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/widget/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/widget/aa;->f:Lcom/dropbox/android/widget/aa;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/android/widget/aa;

    sget-object v1, Lcom/dropbox/android/widget/aa;->a:Lcom/dropbox/android/widget/aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/widget/aa;->b:Lcom/dropbox/android/widget/aa;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/widget/aa;->c:Lcom/dropbox/android/widget/aa;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/widget/aa;->d:Lcom/dropbox/android/widget/aa;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/android/widget/aa;->e:Lcom/dropbox/android/widget/aa;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/android/widget/aa;->f:Lcom/dropbox/android/widget/aa;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/widget/aa;->g:[Lcom/dropbox/android/widget/aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/widget/aa;
    .registers 2
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/dropbox/android/widget/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/aa;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/widget/aa;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/dropbox/android/widget/aa;->g:[Lcom/dropbox/android/widget/aa;

    invoke-virtual {v0}, [Lcom/dropbox/android/widget/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/widget/aa;

    return-object v0
.end method
