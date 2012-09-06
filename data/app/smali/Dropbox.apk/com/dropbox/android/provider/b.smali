.class public final enum Lcom/dropbox/android/provider/b;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/provider/b;

.field public static final enum b:Lcom/dropbox/android/provider/b;

.field private static final synthetic d:[Lcom/dropbox/android/provider/b;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/dropbox/android/provider/b;

    const-string v1, "INTEGER"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v3, v2}, Lcom/dropbox/android/provider/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/android/provider/b;->a:Lcom/dropbox/android/provider/b;

    .line 8
    new-instance v0, Lcom/dropbox/android/provider/b;

    const-string v1, "TEXT"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v4, v2}, Lcom/dropbox/android/provider/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/android/provider/b;->b:Lcom/dropbox/android/provider/b;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/android/provider/b;

    sget-object v1, Lcom/dropbox/android/provider/b;->a:Lcom/dropbox/android/provider/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/provider/b;->b:Lcom/dropbox/android/provider/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/android/provider/b;->d:[Lcom/dropbox/android/provider/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/dropbox/android/provider/b;->c:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/provider/b;
    .registers 2
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/dropbox/android/provider/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/provider/b;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/provider/b;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcom/dropbox/android/provider/b;->d:[Lcom/dropbox/android/provider/b;

    invoke-virtual {v0}, [Lcom/dropbox/android/provider/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/provider/b;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dropbox/android/provider/b;->c:Ljava/lang/String;

    return-object v0
.end method
