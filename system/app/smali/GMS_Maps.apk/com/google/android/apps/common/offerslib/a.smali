.class public Lcom/google/android/apps/common/offerslib/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/apps/common/offerslib/b;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/common/offerslib/b;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/a;->c:Lcom/google/android/apps/common/offerslib/b;

    .line 88
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/a;->a:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/google/android/apps/common/offerslib/a;->b:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/google/android/apps/common/offerslib/a;->c:Lcom/google/android/apps/common/offerslib/b;

    .line 91
    invoke-virtual {p0, p4}, Lcom/google/android/apps/common/offerslib/a;->a(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p5}, Lcom/google/android/apps/common/offerslib/a;->b(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p6}, Lcom/google/android/apps/common/offerslib/a;->a(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/common/offerslib/a;->a()V

    .line 95
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/a;->a:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 136
    const-string v0, "appId is not initialized"

    .line 138
    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/a;->b:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 139
    const-string v0, "appVersion is not initialized"

    .line 141
    :cond_d
    if-eqz v0, :cond_15

    .line 142
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_15
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/common/offerslib/a;->a()V

    .line 105
    if-eqz p1, :cond_16

    :goto_5
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/a;->e:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/a;->e:Ljava/lang/String;

    const-string v1, "a.1"

    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/common/offerslib/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/common/offerslib/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/a;->d:Ljava/lang/String;

    .line 112
    return-void

    .line 105
    :cond_16
    const-string p1, "https://was.sandbox.google.com/offers/m?sky=offers"

    goto :goto_5
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/google/android/apps/common/offerslib/a;->g:Z

    .line 126
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/apps/common/offerslib/a;->a()V

    .line 121
    if-eqz p1, :cond_8

    :goto_5
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/a;->f:Ljava/lang/String;

    .line 122
    return-void

    .line 121
    :cond_8
    const-string p1, "https://www.google.com/offers/mrpc"

    goto :goto_5
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/google/android/apps/common/offerslib/b;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/a;->c:Lcom/google/android/apps/common/offerslib/b;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method g()Z
    .registers 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/android/apps/common/offerslib/a;->g:Z

    return v0
.end method
