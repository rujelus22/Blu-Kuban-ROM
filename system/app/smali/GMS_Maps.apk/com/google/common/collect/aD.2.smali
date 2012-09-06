.class Lcom/google/common/collect/aD;
.super Lcom/google/common/base/B;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/au;


# instance fields
.field final a:Lcom/google/common/collect/X;

.field final b:I

.field final c:Lcom/google/common/collect/au;

.field volatile d:Lcom/google/common/collect/aS;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1097
    sget-object v0, Lcom/google/common/collect/at;->a:Lcom/google/common/base/w;

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/B;-><init>(Ljava/lang/Object;Lcom/google/common/base/w;)V

    .line 1170
    invoke-static {}, Lcom/google/common/collect/X;->f()Lcom/google/common/collect/aS;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aD;->d:Lcom/google/common/collect/aS;

    .line 1098
    iput-object p1, p0, Lcom/google/common/collect/aD;->a:Lcom/google/common/collect/X;

    .line 1099
    iput p3, p0, Lcom/google/common/collect/aD;->b:I

    .line 1100
    iput-object p4, p0, Lcom/google/common/collect/aD;->c:Lcom/google/common/collect/au;

    .line 1101
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/aS;
    .registers 2

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/google/common/collect/aD;->d:Lcom/google/common/collect/aS;

    return-object v0
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 1125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Lcom/google/common/collect/aS;)V
    .registers 3
    .parameter

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/google/common/collect/aD;->d:Lcom/google/common/collect/aS;

    .line 1179
    iput-object p1, p0, Lcom/google/common/collect/aD;->d:Lcom/google/common/collect/aS;

    .line 1180
    invoke-interface {v0}, Lcom/google/common/collect/aS;->clear()V

    .line 1181
    return-void
.end method

.method public a(Lcom/google/common/collect/au;)V
    .registers 3
    .parameter

    .prologue
    .line 1134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/google/common/collect/aD;->c:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public b(Lcom/google/common/collect/aS;)V
    .registers 3
    .parameter

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/google/common/collect/aD;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/X;->a(Lcom/google/common/collect/au;Lcom/google/common/collect/aS;)V

    .line 1185
    return-void
.end method

.method public b(Lcom/google/common/collect/au;)V
    .registers 3
    .parameter

    .prologue
    .line 1143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 1188
    iget v0, p0, Lcom/google/common/collect/aD;->b:I

    return v0
.end method

.method public c(Lcom/google/common/collect/au;)V
    .registers 3
    .parameter

    .prologue
    .line 1153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/google/common/collect/aD;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/common/collect/au;)V
    .registers 3
    .parameter

    .prologue
    .line 1162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e()J
    .registers 2

    .prologue
    .line 1121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public f()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public finalizeReferent()V
    .registers 1

    .prologue
    .line 1110
    invoke-virtual {p0}, Lcom/google/common/collect/aD;->j()V

    .line 1111
    return-void
.end method

.method public g()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public h()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public i()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public j()V
    .registers 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/google/common/collect/aD;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/X;->a(Lcom/google/common/collect/au;)V

    .line 1116
    return-void
.end method
