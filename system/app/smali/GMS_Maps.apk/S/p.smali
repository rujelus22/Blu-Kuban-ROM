.class public LS/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/b;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Hashtable;

.field private final c:LS/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, ""

    sput-object v0, LS/p;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1
    .parameter

    .prologue
    .line 106
    sput-object p0, LS/p;->a:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public a(IZZIZZ)LS/d;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v8, 0x1

    .line 47
    if-eqz p6, :cond_d

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Color with alpha channel not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_d
    if-ne p1, v0, :cond_63

    move v7, v0

    .line 64
    :goto_10
    iget-object v0, p0, LS/p;->c:LS/b;

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, LS/b;->a(IZZIZZ)LS/d;

    move-result-object v1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/googlenav/common/Config;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, LS/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    new-instance v0, LS/o;

    iget-object v5, p0, LS/p;->b:Ljava/util/Hashtable;

    sget-object v6, LS/p;->a:Ljava/lang/String;

    move v3, v7

    move v4, v8

    invoke-direct/range {v0 .. v6}, LS/o;-><init>(LS/d;Ljava/lang/String;IILjava/util/Hashtable;Ljava/lang/String;)V

    return-object v0

    .line 56
    :cond_63
    if-ne p1, v1, :cond_67

    move v7, v1

    .line 58
    goto :goto_10

    :cond_67
    move v7, v8

    .line 61
    goto :goto_10
.end method
