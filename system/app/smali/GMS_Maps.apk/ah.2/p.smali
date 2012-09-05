.class public Lah/p;
.super Ljava/lang/Object;

# interfaces
.implements Lah/b;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Hashtable;

.field private final c:Lah/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lah/p;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lah/p;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(IZZIZZ)Lah/d;
    .registers 16

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v8, 0x1

    if-eqz p6, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Color with alpha channel not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-ne p1, v0, :cond_63

    move v7, v0

    :goto_10
    iget-object v0, p0, Lah/p;->c:Lah/b;

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lah/b;->a(IZZIZZ)Lah/d;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Laf/b;->g()Ljava/lang/String;

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

    sget-object v2, Lah/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lah/o;

    iget-object v5, p0, Lah/p;->b:Ljava/util/Hashtable;

    sget-object v6, Lah/p;->a:Ljava/lang/String;

    move v3, v7

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lah/o;-><init>(Lah/d;Ljava/lang/String;IILjava/util/Hashtable;Ljava/lang/String;)V

    return-object v0

    :cond_63
    if-ne p1, v1, :cond_67

    move v7, v1

    goto :goto_10

    :cond_67
    move v7, v8

    goto :goto_10
.end method
