.class public final enum Ldw;
.super Ljava/lang/Enum;
.source "AclType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldw;

.field private static final synthetic a:[Ldw;

.field public static final enum b:Ldw;

.field public static final enum c:Ldw;

.field public static final enum d:Ldw;

.field public static final enum e:Ldw;

.field public static final enum f:Ldw;


# instance fields
.field protected final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-instance v0, Ldw;

    const-string v1, "OWNER"

    sget v2, LcY;->sharing_role_owner:I

    invoke-direct {v0, v1, v4, v2}, Ldw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldw;->a:Ldw;

    .line 27
    new-instance v0, Ldw;

    const-string v1, "WRITER"

    sget v2, LcY;->sharing_role_writer:I

    invoke-direct {v0, v1, v5, v2}, Ldw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldw;->b:Ldw;

    .line 28
    new-instance v0, Ldw;

    const-string v1, "READER"

    sget v2, LcY;->sharing_role_reader:I

    invoke-direct {v0, v1, v6, v2}, Ldw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldw;->c:Ldw;

    .line 29
    new-instance v0, Ldw;

    const-string v1, "NONE"

    sget v2, LcY;->sharing_role_unknown:I

    invoke-direct {v0, v1, v7, v2}, Ldw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldw;->d:Ldw;

    .line 30
    new-instance v0, Ldw;

    const-string v1, "NOACCESS"

    sget v2, LcY;->sharing_role_no_access:I

    invoke-direct {v0, v1, v8, v2}, Ldw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldw;->e:Ldw;

    .line 31
    new-instance v0, Ldw;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    sget v3, LcY;->sharing_role_unknown:I

    invoke-direct {v0, v1, v2, v3}, Ldw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldw;->f:Ldw;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Ldw;

    sget-object v1, Ldw;->a:Ldw;

    aput-object v1, v0, v4

    sget-object v1, Ldw;->b:Ldw;

    aput-object v1, v0, v5

    sget-object v1, Ldw;->c:Ldw;

    aput-object v1, v0, v6

    sget-object v1, Ldw;->d:Ldw;

    aput-object v1, v0, v7

    sget-object v1, Ldw;->e:Ldw;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Ldw;->f:Ldw;

    aput-object v2, v0, v1

    sput-object v0, Ldw;->a:[Ldw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Ldw;->a:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldw;
    .registers 2
    .parameter

    .prologue
    .line 25
    const-class v0, Ldw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldw;

    return-object v0
.end method

.method public static values()[Ldw;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Ldw;->a:[Ldw;

    invoke-virtual {v0}, [Ldw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldw;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 40
    iget v0, p0, Ldw;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
