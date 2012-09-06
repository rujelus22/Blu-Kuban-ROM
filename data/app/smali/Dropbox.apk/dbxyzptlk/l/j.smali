.class public final Ldbxyzptlk/l/j;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Date;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter

    .prologue
    .line 786
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ldbxyzptlk/l/j;-><init>(Ljava/util/Map;Z)V

    .line 787
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ldbxyzptlk/l/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 770
    invoke-direct {p0, p1}, Ldbxyzptlk/l/j;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 800
    const-string v1, "expires"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 801
    if-eqz v1, :cond_38

    .line 802
    invoke-static {v1}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Ldbxyzptlk/l/j;->b:Ljava/util/Date;

    .line 807
    :goto_1b
    if-nez p2, :cond_35

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 808
    const-string v1, "https://"

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    const-string v1, ":443/"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    :cond_35
    iput-object v0, p0, Ldbxyzptlk/l/j;->a:Ljava/lang/String;

    .line 812
    return-void

    .line 804
    :cond_38
    const/4 v1, 0x0

    iput-object v1, p0, Ldbxyzptlk/l/j;->b:Ljava/util/Date;

    goto :goto_1b
.end method

.method synthetic constructor <init>(Ljava/util/Map;ZLdbxyzptlk/l/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 770
    invoke-direct {p0, p1, p2}, Ldbxyzptlk/l/j;-><init>(Ljava/util/Map;Z)V

    return-void
.end method
