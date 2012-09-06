.class Lcom/google/googlenav/appwidget/gohome/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bY;

.field final synthetic b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;Lcom/google/googlenav/ui/view/android/bY;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/gohome/b;->a:Lcom/google/googlenav/ui/view/android/bY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/b;->a:Lcom/google/googlenav/ui/view/android/bY;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bY;->b()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 273
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/b;->a:Lcom/google/googlenav/ui/view/android/bY;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bY;->c()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 277
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/b;->a:Lcom/google/googlenav/ui/view/android/bY;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bY;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroid/provider/Contacts$People;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_5d

    .line 280
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Lcom/google/googlenav/appwidget/gohome/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/appwidget/gohome/e;->a(Landroid/graphics/Bitmap;)V

    .line 281
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Lcom/google/googlenav/appwidget/gohome/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/gohome/e;->notifyDataSetChanged()V

    .line 283
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/Gallery;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Gallery;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 290
    :goto_5c
    return-void

    .line 285
    :cond_5d
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Lcom/google/googlenav/appwidget/gohome/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/gohome/e;->b()V

    goto :goto_5c

    .line 288
    :cond_67
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Lcom/google/googlenav/appwidget/gohome/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/gohome/e;->b()V

    goto :goto_5c
.end method
