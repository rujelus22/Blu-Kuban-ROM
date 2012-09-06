.class public final LK/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK/d;


# static fields
.field private static final a:LK/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, LK/a;

    invoke-direct {v0}, LK/a;-><init>()V

    sput-object v0, LK/a;->a:LK/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LK/d;
    .registers 1

    .prologue
    .line 17
    sget-object v0, LK/a;->a:LK/d;

    return-object v0
.end method


# virtual methods
.method public a(LK/c;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    move v1, p2

    :goto_1
    if-gt v1, p3, :cond_19

    move v0, v1

    .line 22
    :goto_4
    if-le v0, p2, :cond_16

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v0, v2}, LK/c;->c(II)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 23
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v0, v2}, LK/c;->d(II)V

    .line 22
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 21
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 26
    :cond_19
    return-void
.end method
