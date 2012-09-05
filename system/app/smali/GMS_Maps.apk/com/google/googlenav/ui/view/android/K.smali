.class Lcom/google/googlenav/ui/view/android/K;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/V;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/I;

.field private final b:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/I;Landroid/content/ContentResolver;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/K;->a:Lcom/google/googlenav/ui/view/android/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/K;->b:Landroid/content/ContentResolver;

    return-void
.end method

.method private a(Z)V
    .registers 6

    if-eqz p1, :cond_13

    const/16 v0, 0x347

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/K;->a:Lcom/google/googlenav/ui/view/android/I;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/I;->f:Lcom/google/googlenav/ui/p;

    const/16 v2, 0xc

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .registers 12

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-ne p2, v7, :cond_4e

    if-nez p3, :cond_c

    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/view/android/K;->a(Z)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/K;->b:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_24

    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/view/android/K;->a(Z)V

    goto :goto_b

    :cond_24
    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_49

    move-result-object v0

    :goto_35
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/K;->a:Lcom/google/googlenav/ui/view/android/I;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/I;->f:Lcom/google/googlenav/ui/p;

    const/16 v2, 0xb

    new-instance v4, Lcom/google/googlenav/ui/wizard/bx;

    const-string v5, "image/jpeg"

    invoke-direct {v4, v3, v5, v0}, Lcom/google/googlenav/ui/wizard/bx;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v7, v4}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    goto :goto_b

    :catchall_49
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4e
    if-nez p2, :cond_b

    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/view/android/K;->a(Z)V

    goto :goto_b

    :cond_54
    move-object v0, v3

    goto :goto_35
.end method

.method public ab_()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
