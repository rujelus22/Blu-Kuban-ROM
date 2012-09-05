.class public abstract Ljs;
.super Ljo;
.source "a"


# instance fields
.field protected final c:Ljt;

.field protected final d:[Ljt;


# direct methods
.method protected constructor <init>(Ljt;[Ljt;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljo;-><init>()V

    .line 33
    iput-object p1, p0, Ljs;->c:Ljt;

    .line 34
    iput-object p2, p0, Ljs;->d:[Ljt;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Ljs;->c:Ljt;

    invoke-virtual {v0, p1}, Ljt;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(I)Ljr;
.end method

.method public final a(ILjava/lang/annotation/Annotation;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Ljs;->d:[Ljt;

    aget-object v0, v0, p1

    .line 55
    if-nez v0, :cond_f

    .line 56
    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    .line 57
    iget-object v1, p0, Ljs;->d:[Ljt;

    aput-object v0, v1, p1

    .line 59
    :cond_f
    invoke-virtual {v0, p2}, Ljt;->b(Ljava/lang/annotation/Annotation;)V

    .line 60
    return-void
.end method

.method public final a(Ljava/lang/annotation/Annotation;)V
    .registers 3
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Ljs;->c:Ljt;

    invoke-virtual {v0, p1}, Ljt;->b(Ljava/lang/annotation/Annotation;)V

    .line 44
    return-void
.end method

.method public final b(Ljava/lang/annotation/Annotation;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Ljs;->c:Ljt;

    invoke-virtual {v0, p1}, Ljt;->a(Ljava/lang/annotation/Annotation;)V

    .line 70
    return-void
.end method

.method public abstract e()I
.end method
