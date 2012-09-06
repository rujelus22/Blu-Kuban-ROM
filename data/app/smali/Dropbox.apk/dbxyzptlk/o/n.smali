.class public final enum Ldbxyzptlk/o/n;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Ldbxyzptlk/o/n;

.field public static final enum b:Ldbxyzptlk/o/n;

.field private static final synthetic d:[Ldbxyzptlk/o/n;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    new-instance v0, Ldbxyzptlk/o/n;

    const-string v1, "DROPBOX"

    const-string v2, "dropbox"

    invoke-direct {v0, v1, v3, v2}, Ldbxyzptlk/o/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ldbxyzptlk/o/n;->a:Ldbxyzptlk/o/n;

    new-instance v0, Ldbxyzptlk/o/n;

    const-string v1, "APP_FOLDER"

    const-string v2, "sandbox"

    invoke-direct {v0, v1, v4, v2}, Ldbxyzptlk/o/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ldbxyzptlk/o/n;->b:Ldbxyzptlk/o/n;

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Ldbxyzptlk/o/n;

    sget-object v1, Ldbxyzptlk/o/n;->a:Ldbxyzptlk/o/n;

    aput-object v1, v0, v3

    sget-object v1, Ldbxyzptlk/o/n;->b:Ldbxyzptlk/o/n;

    aput-object v1, v0, v4

    sput-object v0, Ldbxyzptlk/o/n;->d:[Ldbxyzptlk/o/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    iput-object p3, p0, Ldbxyzptlk/o/n;->c:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldbxyzptlk/o/n;
    .registers 2
    .parameter

    .prologue
    .line 120
    const-class v0, Ldbxyzptlk/o/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/o/n;

    return-object v0
.end method

.method public static values()[Ldbxyzptlk/o/n;
    .registers 1

    .prologue
    .line 120
    sget-object v0, Ldbxyzptlk/o/n;->d:[Ldbxyzptlk/o/n;

    invoke-virtual {v0}, [Ldbxyzptlk/o/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldbxyzptlk/o/n;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Ldbxyzptlk/o/n;->c:Ljava/lang/String;

    return-object v0
.end method
