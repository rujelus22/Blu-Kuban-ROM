.class public final Lcm;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcm;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcm;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final setCode(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcm;->code:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public final setNumber(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcm;->number:Ljava/lang/String;

    .line 22
    return-void
.end method
