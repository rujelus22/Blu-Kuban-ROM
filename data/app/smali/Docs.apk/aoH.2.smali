.class public LaoH;
.super Ljava/lang/Object;
.source "ExposureBuilder.java"

# interfaces
.implements LanS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LanS;"
    }
.end annotation


# instance fields
.field private a:Lant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lant",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Lcom/google/inject/Binder;

.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/inject/Binder;Ljava/lang/Object;Lant;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            "Ljava/lang/Object;",
            "Lant",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, LaoH;->a:Lcom/google/inject/Binder;

    .line 36
    iput-object p2, p0, LaoH;->a:Ljava/lang/Object;

    .line 37
    iput-object p3, p0, LaoH;->a:Lant;

    .line 38
    return-void
.end method


# virtual methods
.method public a()Lant;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lant",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, LaoH;->a:Lant;

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, LaoH;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    const-string v0, "AnnotatedElementBuilder"

    return-object v0
.end method
