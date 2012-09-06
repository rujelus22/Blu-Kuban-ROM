.class Lcom/google/googlenav/ui/view/android/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/R;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/B;

.field private final b:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/B;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/E;->a:Lcom/google/googlenav/ui/view/android/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/E;->b:Landroid/content/ContentResolver;

    .line 179
    return-void
.end method

.method private a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 219
    if-eqz p1, :cond_12

    const/16 v0, 0x403

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_8
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/E;->a:Lcom/google/googlenav/ui/view/android/B;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/B;->a(Lcom/google/googlenav/ui/view/android/B;)Lcom/google/googlenav/ui/wizard/ca;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/ca;->a(Ljava/lang/String;)V

    .line 221
    return-void

    .line 219
    :cond_12
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 225
    const/4 v0, 0x2

    return v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 183
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4e

    .line 184
    if-nez p3, :cond_c

    .line 185
    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/view/android/E;->a(Z)V

    .line 216
    :cond_b
    :goto_b
    return-void

    .line 188
    :cond_c
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 189
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v4

    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/E;->b:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 194
    if-nez v1, :cond_24

    .line 195
    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/view/android/E;->a(Z)V

    goto :goto_b

    .line 200
    :cond_24
    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 201
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 202
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_49

    move-result-object v0

    .line 205
    :goto_35
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 211
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/E;->a:Lcom/google/googlenav/ui/view/android/B;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/B;->a(Lcom/google/googlenav/ui/view/android/B;)Lcom/google/googlenav/ui/wizard/ca;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cc;

    const-string v4, "image/jpeg"

    invoke-direct {v2, v3, v4, v0}, Lcom/google/googlenav/ui/wizard/cc;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/ca;->a(Lcom/google/googlenav/ui/wizard/cc;)V

    goto :goto_b

    .line 205
    :catchall_49
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 212
    :cond_4e
    if-nez p2, :cond_b

    .line 214
    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/view/android/E;->a(Z)V

    goto :goto_b

    :cond_54
    move-object v0, v3

    goto :goto_35
.end method
