.class public final Ldbxyzptlk/p/x;
.super Ldbxyzptlk/l/c;
.source "panda.py"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJJLjava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct/range {p0 .. p11}, Ldbxyzptlk/l/c;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJJ)V

    .line 155
    iput-object p12, p0, Ldbxyzptlk/p/x;->h:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter

    .prologue
    .line 159
    invoke-direct {p0, p1}, Ldbxyzptlk/l/c;-><init>(Ljava/util/Map;)V

    .line 160
    const-string v0, "email"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/p/x;->h:Ljava/lang/String;

    .line 161
    return-void
.end method
