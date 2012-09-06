.class public final Lcom/twitter/android/util/l;
.super Lcom/twitter/android/util/p;


# instance fields
.field private final h:Lcom/twitter/android/util/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/util/m;I)V
    .registers 6

    const/16 v0, 0x19

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/twitter/android/util/p;-><init>(Landroid/content/Context;III)V

    iput-object p2, p0, Lcom/twitter/android/util/l;->h:Lcom/twitter/android/util/m;

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p3

    invoke-super/range {v0 .. v5}, Lcom/twitter/android/util/p;->a(JLjava/lang/Object;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(JLjava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/o;
    .registers 6

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(JLjava/lang/Object;Ljava/lang/String;[B)Lcom/twitter/android/util/o;
    .registers 7

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/o;
    .registers 5

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/twitter/android/util/o;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/twitter/android/util/o;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method protected final a(Ljava/util/HashMap;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/util/l;->h:Lcom/twitter/android/util/m;

    invoke-interface {v0, p0, p1}, Lcom/twitter/android/util/m;->a(Lcom/twitter/android/util/p;Ljava/util/HashMap;)V

    return-void
.end method
