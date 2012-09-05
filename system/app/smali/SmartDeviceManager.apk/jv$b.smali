.class public final Ljv$b;
.super Ljv$c;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "b"
.end annotation


# static fields
.field public static final a:Ljv$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    new-instance v0, Ljv$b;

    invoke-direct {v0}, Ljv$b;-><init>()V

    sput-object v0, Ljv$b;->a:Ljv$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljv$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-super {p0, p1}, Ljv$c;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    .line 105
    :goto_9
    return v0

    .line 96
    :cond_a
    invoke-static {p1}, Lme;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v2

    .line 97
    goto :goto_9

    .line 100
    :cond_12
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 101
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_26

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    move v0, v3

    .line 103
    goto :goto_9

    :cond_28
    move v0, v2

    .line 105
    goto :goto_9
.end method
