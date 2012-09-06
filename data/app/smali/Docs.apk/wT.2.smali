.class public final enum LwT;
.super Ljava/lang/Enum;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LwT;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "LwT;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:LwT;

.field private static final synthetic a:[LwT;

.field public static final enum b:LwT;

.field public static final enum c:LwT;

.field public static final enum d:LwT;

.field public static final enum e:LwT;

.field public static final enum f:LwT;

.field public static final enum g:LwT;


# instance fields
.field private final a:I

.field private final a:LBo;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 23
    new-instance v0, LwT;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v7, v7, v2}, LwT;-><init>(Ljava/lang/String;IILBo;)V

    sput-object v0, LwT;->a:LwT;

    .line 24
    new-instance v0, LwT;

    const-string v1, "FOOTNOTE_NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v8, v8, v2}, LwT;-><init>(Ljava/lang/String;IILBo;)V

    sput-object v0, LwT;->b:LwT;

    .line 25
    new-instance v0, LwT;

    const-string v1, "TABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v9, v9, v2}, LwT;-><init>(Ljava/lang/String;IILBo;)V

    sput-object v0, LwT;->c:LwT;

    .line 26
    new-instance v0, LwT;

    const-string v1, "EQUATION"

    new-instance v2, LBo;

    sget v3, Luo;->uneditable_equation:I

    sget v4, Lus;->uneditable_equation:I

    invoke-direct {v2, v3, v4, v8}, LBo;-><init>(IIZ)V

    invoke-direct {v0, v1, v10, v10, v2}, LwT;-><init>(Ljava/lang/String;IILBo;)V

    sput-object v0, LwT;->d:LwT;

    .line 28
    new-instance v0, LwT;

    const-string v1, "INLINE_ENTITY"

    new-instance v2, LBo;

    sget v3, Luo;->uneditable_drawing:I

    sget v4, Lus;->uneditable_drawing:I

    invoke-direct {v2, v3, v4, v8}, LBo;-><init>(IIZ)V

    invoke-direct {v0, v1, v11, v11, v2}, LwT;-><init>(Ljava/lang/String;IILBo;)V

    sput-object v0, LwT;->e:LwT;

    .line 30
    new-instance v0, LwT;

    const-string v1, "AUTOGEN_REGION"

    const/4 v2, 0x5

    const/4 v3, 0x5

    new-instance v4, LBo;

    sget v5, Luo;->uneditable_item:I

    sget v6, Lus;->uneditable_item:I

    invoke-direct {v4, v5, v6, v7}, LBo;-><init>(IIZ)V

    invoke-direct {v0, v1, v2, v3, v4}, LwT;-><init>(Ljava/lang/String;IILBo;)V

    sput-object v0, LwT;->f:LwT;

    .line 32
    new-instance v0, LwT;

    const-string v1, "LINE_BREAK"

    const/4 v2, 0x6

    const/4 v3, 0x6

    new-instance v4, LBo;

    sget v5, Luo;->uneditable_item:I

    sget v6, Lus;->uneditable_item:I

    invoke-direct {v4, v5, v6, v7}, LBo;-><init>(IIZ)V

    invoke-direct {v0, v1, v2, v3, v4}, LwT;-><init>(Ljava/lang/String;IILBo;)V

    sput-object v0, LwT;->g:LwT;

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [LwT;

    sget-object v1, LwT;->a:LwT;

    aput-object v1, v0, v7

    sget-object v1, LwT;->b:LwT;

    aput-object v1, v0, v8

    sget-object v1, LwT;->c:LwT;

    aput-object v1, v0, v9

    sget-object v1, LwT;->d:LwT;

    aput-object v1, v0, v10

    sget-object v1, LwT;->e:LwT;

    aput-object v1, v0, v11

    const/4 v1, 0x5

    sget-object v2, LwT;->f:LwT;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LwT;->g:LwT;

    aput-object v2, v0, v1

    sput-object v0, LwT;->a:[LwT;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LwT;->a:Ljava/util/Map;

    .line 38
    const-class v0, LwT;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LwT;

    .line 39
    sget-object v2, LwT;->a:Ljava/util/Map;

    invoke-virtual {v0}, LwT;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    .line 41
    :cond_bd
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILBo;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LBo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, LwT;->a:I

    .line 48
    iput-object p4, p0, LwT;->a:LBo;

    .line 49
    return-void
.end method

.method public static a(I)LwT;
    .registers 3
    .parameter

    .prologue
    .line 71
    sget-object v0, LwT;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LwT;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LwT;
    .registers 2
    .parameter

    .prologue
    .line 20
    const-class v0, LwT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LwT;

    return-object v0
.end method

.method public static values()[LwT;
    .registers 1

    .prologue
    .line 20
    sget-object v0, LwT;->a:[LwT;

    invoke-virtual {v0}, [LwT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LwT;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, LwT;->a:I

    return v0
.end method

.method public a()LBo;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, LwT;->a:LBo;

    return-object v0
.end method
