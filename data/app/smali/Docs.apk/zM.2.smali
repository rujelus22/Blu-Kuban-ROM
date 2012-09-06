.class public LzM;
.super Ljava/lang/Object;
.source "DownloadImageTask.java"


# instance fields
.field private a:LIL;

.field private a:LXP;

.field private a:Ljava/lang/String;

.field private a:LzW;

.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public a()LzK;
    .registers 9

    .prologue
    .line 90
    new-instance v0, LzK;

    iget-object v1, p0, LzM;->a:Ljava/lang/String;

    iget-object v2, p0, LzM;->a:LzW;

    iget-object v3, p0, LzM;->a:LIL;

    iget-object v4, p0, LzM;->b:Ljava/lang/String;

    iget-object v5, p0, LzM;->a:LXP;

    iget-boolean v6, p0, LzM;->a:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, LzK;-><init>(Ljava/lang/String;LzW;LIL;Ljava/lang/String;LXP;ZLzL;)V

    return-object v0
.end method

.method public a(LIL;)LzM;
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, LzM;->a:LIL;

    .line 71
    return-object p0
.end method

.method public a(LXP;)LzM;
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, LzM;->a:LXP;

    .line 81
    return-object p0
.end method

.method public a(Ljava/lang/String;)LzM;
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, LzM;->a:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public a(LzW;)LzM;
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, LzM;->a:LzW;

    .line 66
    return-object p0
.end method

.method public a(Z)LzM;
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, LzM;->a:Z

    .line 86
    return-object p0
.end method

.method public b(Ljava/lang/String;)LzM;
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, LzM;->b:Ljava/lang/String;

    .line 76
    return-object p0
.end method
