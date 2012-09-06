.class public LaC/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, LaC/n;->d:Z

    .line 37
    iput-boolean v0, p0, LaC/n;->e:Z

    return-void
.end method


# virtual methods
.method public a()LaC/l;
    .registers 8

    .prologue
    .line 65
    new-instance v0, LaC/l;

    iget v1, p0, LaC/n;->a:I

    iget-object v2, p0, LaC/n;->b:Ljava/lang/String;

    iget-object v3, p0, LaC/n;->c:Ljava/lang/String;

    iget-boolean v4, p0, LaC/n;->d:Z

    iget-boolean v5, p0, LaC/n;->e:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, LaC/l;-><init>(ILjava/lang/String;Ljava/lang/String;ZZLaC/m;)V

    return-object v0
.end method

.method public a(I)LaC/n;
    .registers 2
    .parameter

    .prologue
    .line 40
    iput p1, p0, LaC/n;->a:I

    .line 41
    return-object p0
.end method

.method public a(Ljava/lang/String;)LaC/n;
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, LaC/n;->b:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public a(Z)LaC/n;
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, LaC/n;->e:Z

    .line 61
    return-object p0
.end method
