.class public final enum Ldu;
.super Ljava/lang/Enum;
.source "AclType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldu;

.field private static final synthetic a:[Ldu;

.field public static final enum b:Ldu;

.field public static final enum c:Ldu;

.field public static final enum d:Ldu;

.field public static final enum e:Ldu;

.field public static final enum f:Ldu;

.field public static final enum g:Ldu;


# instance fields
.field private final a:I

.field private final a:Ldw;

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 56
    new-instance v0, Ldu;

    const-string v1, "OWNER"

    sget-object v3, Ldw;->a:Ldw;

    invoke-direct {v0, v1, v7, v3}, Ldu;-><init>(Ljava/lang/String;ILdw;)V

    sput-object v0, Ldu;->a:Ldu;

    .line 57
    new-instance v0, Ldu;

    const-string v1, "WRITER"

    sget-object v3, Ldw;->b:Ldw;

    invoke-direct {v0, v1, v8, v3}, Ldu;-><init>(Ljava/lang/String;ILdw;)V

    sput-object v0, Ldu;->b:Ldu;

    .line 58
    new-instance v0, Ldu;

    const-string v1, "COMMENTER"

    sget v3, LcY;->sharing_role_commenter:I

    sget-object v4, Ldw;->c:Ldw;

    sget-object v5, Lds;->a:Lds;

    new-array v6, v7, [Lds;

    invoke-direct/range {v0 .. v6}, Ldu;-><init>(Ljava/lang/String;IILdw;Lds;[Lds;)V

    sput-object v0, Ldu;->c:Ldu;

    .line 59
    new-instance v0, Ldu;

    const-string v1, "READER"

    sget-object v3, Ldw;->c:Ldw;

    invoke-direct {v0, v1, v9, v3}, Ldu;-><init>(Ljava/lang/String;ILdw;)V

    sput-object v0, Ldu;->d:Ldu;

    .line 60
    new-instance v0, Ldu;

    const-string v1, "NONE"

    sget-object v3, Ldw;->d:Ldw;

    invoke-direct {v0, v1, v10, v3}, Ldu;-><init>(Ljava/lang/String;ILdw;)V

    sput-object v0, Ldu;->e:Ldu;

    .line 61
    new-instance v0, Ldu;

    const-string v1, "NOACCESS"

    const/4 v3, 0x5

    sget-object v4, Ldw;->e:Ldw;

    invoke-direct {v0, v1, v3, v4}, Ldu;-><init>(Ljava/lang/String;ILdw;)V

    sput-object v0, Ldu;->f:Ldu;

    .line 62
    new-instance v0, Ldu;

    const-string v1, "UNKNOWN"

    const/4 v3, 0x6

    sget-object v4, Ldw;->f:Ldw;

    invoke-direct {v0, v1, v3, v4}, Ldu;-><init>(Ljava/lang/String;ILdw;)V

    sput-object v0, Ldu;->g:Ldu;

    .line 55
    const/4 v0, 0x7

    new-array v0, v0, [Ldu;

    sget-object v1, Ldu;->a:Ldu;

    aput-object v1, v0, v7

    sget-object v1, Ldu;->b:Ldu;

    aput-object v1, v0, v8

    sget-object v1, Ldu;->c:Ldu;

    aput-object v1, v0, v2

    sget-object v1, Ldu;->d:Ldu;

    aput-object v1, v0, v9

    sget-object v1, Ldu;->e:Ldu;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Ldu;->f:Ldu;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ldu;->g:Ldu;

    aput-object v2, v0, v1

    sput-object v0, Ldu;->a:[Ldu;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;IILdw;Lds;[Lds;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ldw;",
            "Lds;",
            "[",
            "Lds;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p5, p6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ldu;-><init>(Ljava/lang/String;IILdw;Ljava/util/Set;)V

    .line 80
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILdw;Ljava/util/Set;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ldw;",
            "Ljava/util/Set",
            "<",
            "Lds;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Ldu;->a:I

    .line 70
    iput-object p4, p0, Ldu;->a:Ldw;

    .line 71
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ldu;->a:Ljava/util/Set;

    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILdw;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    iget v3, p3, Ldw;->a:I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ldu;-><init>(Ljava/lang/String;IILdw;Ljava/util/Set;)V

    .line 76
    return-void
.end method

.method public static a(Ldw;Ljava/util/Set;)Ldu;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldw;",
            "Ljava/util/Set",
            "<",
            "Lds;",
            ">;)",
            "Ldu;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Ldu;->values()[Ldu;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_20

    aget-object v0, v2, v1

    .line 106
    iget-object v4, v0, Ldu;->a:Ldw;

    invoke-virtual {v4, p0}, Ldw;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, v0, Ldu;->a:Ljava/util/Set;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 114
    :goto_1b
    return-object v0

    .line 105
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 111
    :cond_20
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 112
    sget-object v0, Ldu;->g:Ldu;

    goto :goto_1b

    .line 114
    :cond_29
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Ldu;->a(Ldw;Ljava/util/Set;)Ldu;

    move-result-object v0

    goto :goto_1b
.end method

.method public static varargs a(Ldw;[Lds;)Ldu;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 99
    const-class v0, Lds;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 100
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 101
    invoke-static {p0, v0}, Ldu;->a(Ldw;Ljava/util/Set;)Ldu;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldu;
    .registers 2
    .parameter

    .prologue
    .line 55
    const-class v0, Ldu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldu;

    return-object v0
.end method

.method public static values()[Ldu;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Ldu;->a:[Ldu;

    invoke-virtual {v0}, [Ldu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldu;

    return-object v0
.end method


# virtual methods
.method public a()Ldw;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Ldu;->a:Ldw;

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Ldu;->a:Ljava/util/Set;

    return-object v0
.end method
