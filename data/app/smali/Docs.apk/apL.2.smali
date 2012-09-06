.class final LapL;
.super LapG;
.source "Scoping.java"


# instance fields
.field final synthetic a:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, LapL;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LapG;-><init>(LapH;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, LapL;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public a(Laqd;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Laqd",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, LapL;->a:Ljava/lang/Class;

    invoke-interface {p1, v0}, Laqd;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, LapL;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
