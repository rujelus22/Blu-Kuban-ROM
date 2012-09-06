.class public final Lamg;
.super Lame;
.source "JsonNull.java"


# static fields
.field public static final a:Lamg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lamg;

    invoke-direct {v0}, Lamg;-><init>()V

    sput-object v0, Lamg;->a:Lamg;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lame;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 56
    if-eq p0, p1, :cond_6

    instance-of v0, p1, Lamg;

    if-eqz v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 48
    const-class v0, Lamg;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
