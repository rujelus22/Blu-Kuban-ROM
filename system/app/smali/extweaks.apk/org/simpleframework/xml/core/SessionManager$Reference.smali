.class Lorg/simpleframework/xml/core/SessionManager$Reference;
.super Ljava/lang/Object;
.source "SessionManager.java"


# instance fields
.field private count:I

.field private session:Lorg/simpleframework/xml/core/Session;


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lorg/simpleframework/xml/core/Session;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Session;-><init>(Z)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->session:Lorg/simpleframework/xml/core/Session;

    .line 154
    return-void
.end method


# virtual methods
.method public clear()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    return v0
.end method

.method public get()Lorg/simpleframework/xml/core/Session;
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    if-ltz v0, :cond_a

    .line 166
    iget v0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    .line 168
    :cond_a
    iget-object v0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->session:Lorg/simpleframework/xml/core/Session;

    return-object v0
.end method