.class public LaoE;
.super Ljava/lang/Exception;
.source "ErrorsException.java"


# instance fields
.field private final a:Laoy;


# direct methods
.method public constructor <init>(Laoy;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    iput-object p1, p0, LaoE;->a:Laoy;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Laoy;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, LaoE;->a:Laoy;

    return-object v0
.end method
