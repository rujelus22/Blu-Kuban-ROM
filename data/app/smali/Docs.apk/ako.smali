.class final Lako;
.super Lakl;
.source "MapMakerInternalMap.java"

# interfaces
.implements Laka;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lakl",
        "<TK;TV;>;",
        "Laka",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:J

.field b:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILaka;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1148
    invoke-direct {p0, p1, p2, p3}, Lakl;-><init>(Ljava/lang/Object;ILaka;)V

    .line 1153
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lako;->a:J

    .line 1165
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    iput-object v0, p0, Lako;->b:Laka;

    .line 1178
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    iput-object v0, p0, Lako;->c:Laka;

    .line 1193
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    iput-object v0, p0, Lako;->d:Laka;

    .line 1206
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    iput-object v0, p0, Lako;->e:Laka;

    .line 1149
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 1157
    iget-wide v0, p0, Lako;->a:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 1162
    iput-wide p1, p0, Lako;->a:J

    .line 1163
    return-void
.end method

.method public a(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1175
    iput-object p1, p0, Lako;->b:Laka;

    .line 1176
    return-void
.end method

.method public b()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1170
    iget-object v0, p0, Lako;->b:Laka;

    return-object v0
.end method

.method public b(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1188
    iput-object p1, p0, Lako;->c:Laka;

    .line 1189
    return-void
.end method

.method public c()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1183
    iget-object v0, p0, Lako;->c:Laka;

    return-object v0
.end method

.method public c(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1203
    iput-object p1, p0, Lako;->d:Laka;

    .line 1204
    return-void
.end method

.method public d()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1198
    iget-object v0, p0, Lako;->d:Laka;

    return-object v0
.end method

.method public d(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1216
    iput-object p1, p0, Lako;->e:Laka;

    .line 1217
    return-void
.end method

.method public e()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1211
    iget-object v0, p0, Lako;->e:Laka;

    return-object v0
.end method
