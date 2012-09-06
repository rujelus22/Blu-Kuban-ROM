.class public final enum LPq;
.super Ljava/lang/Enum;
.source "ContactSharingOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LPq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LPq;

.field private static final synthetic a:[LPq;

.field public static final enum b:LPq;

.field public static final enum c:LPq;


# instance fields
.field private final a:I

.field private final a:Ldw;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, LPq;

    const-string v1, "WRITER"

    sget v2, LcY;->contact_sharing_writer:I

    sget-object v3, Ldw;->b:Ldw;

    invoke-direct {v0, v1, v4, v2, v3}, LPq;-><init>(Ljava/lang/String;IILdw;)V

    sput-object v0, LPq;->a:LPq;

    .line 17
    new-instance v0, LPq;

    const-string v1, "READER"

    sget v2, LcY;->contact_sharing_reader:I

    sget-object v3, Ldw;->c:Ldw;

    invoke-direct {v0, v1, v5, v2, v3}, LPq;-><init>(Ljava/lang/String;IILdw;)V

    sput-object v0, LPq;->b:LPq;

    .line 20
    new-instance v0, LPq;

    const-string v1, "NO_ACCESS"

    sget v2, LcY;->contact_sharing_no_access:I

    sget-object v3, Ldw;->e:Ldw;

    invoke-direct {v0, v1, v6, v2, v3}, LPq;-><init>(Ljava/lang/String;IILdw;)V

    sput-object v0, LPq;->c:LPq;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [LPq;

    sget-object v1, LPq;->a:LPq;

    aput-object v1, v0, v4

    sget-object v1, LPq;->b:LPq;

    aput-object v1, v0, v5

    sget-object v1, LPq;->c:LPq;

    aput-object v1, v0, v6

    sput-object v0, LPq;->a:[LPq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILdw;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ldw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, LPq;->a:I

    .line 27
    iput-object p4, p0, LPq;->a:Ldw;

    .line 28
    return-void
.end method

.method public static a(Ldw;)I
    .registers 6
    .parameter

    .prologue
    .line 45
    invoke-static {}, LPq;->values()[LPq;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_16

    aget-object v3, v1, v0

    .line 46
    iget-object v4, v3, LPq;->a:Ldw;

    if-ne v4, p0, :cond_13

    .line 47
    invoke-virtual {v3}, LPq;->ordinal()I

    move-result v0

    .line 50
    :goto_12
    return v0

    .line 45
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 50
    :cond_16
    sget-object v0, LPq;->c:LPq;

    invoke-virtual {v0}, LPq;->ordinal()I

    move-result v0

    goto :goto_12
.end method

.method public static valueOf(Ljava/lang/String;)LPq;
    .registers 2
    .parameter

    .prologue
    .line 13
    const-class v0, LPq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LPq;

    return-object v0
.end method

.method public static values()[LPq;
    .registers 1

    .prologue
    .line 13
    sget-object v0, LPq;->a:[LPq;

    invoke-virtual {v0}, [LPq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LPq;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, LPq;->a:I

    return v0
.end method

.method public a()Ldw;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, LPq;->a:Ldw;

    return-object v0
.end method
