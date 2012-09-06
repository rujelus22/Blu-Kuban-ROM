.class public final Lcom/anddoes/launcher/kj;
.super Lcom/anddoes/launcher/ec;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Landroid/content/Intent;

.field c:Z

.field d:Z

.field e:Landroid/content/Intent$ShortcutIconResource;

.field private f:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/anddoes/launcher/ec;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/anddoes/launcher/kj;->i:I

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/anddoes/launcher/y;)V
    .registers 4
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/ec;-><init>(Lcom/anddoes/launcher/ec;)V

    .line 85
    iget-object v0, p1, Lcom/anddoes/launcher/y;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/kj;->a:Ljava/lang/CharSequence;

    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/kj;->c:Z

    .line 88
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public final a(Lcom/anddoes/launcher/ds;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/anddoes/launcher/kj;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_14

    .line 96
    iget-object v0, p0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/anddoes/launcher/ds;->a(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/kj;->f:Landroid/graphics/Bitmap;

    .line 97
    iget-object v0, p0, Lcom/anddoes/launcher/kj;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/anddoes/launcher/ds;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/kj;->d:Z

    .line 99
    :cond_14
    iget-object v0, p0, Lcom/anddoes/launcher/kj;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method final a(Landroid/content/ContentValues;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 123
    invoke-super {p0, p1}, Lcom/anddoes/launcher/ec;->a(Landroid/content/ContentValues;)V

    .line 125
    iget-object v0, p0, Lcom/anddoes/launcher/kj;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/anddoes/launcher/kj;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_f
    const-string v2, "title"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_1e
    const-string v0, "intent"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-boolean v0, p0, Lcom/anddoes/launcher/kj;->c:Z

    if-eqz v0, :cond_39

    .line 132
    const-string v0, "iconType"

    .line 133
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    iget-object v0, p0, Lcom/anddoes/launcher/kj;->f:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/anddoes/launcher/kj;->a(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 148
    :cond_36
    :goto_36
    return-void

    :cond_37
    move-object v0, v1

    .line 125
    goto :goto_f

    .line 136
    :cond_39
    iget-boolean v0, p0, Lcom/anddoes/launcher/kj;->d:Z

    if-nez v0, :cond_42

    .line 137
    iget-object v0, p0, Lcom/anddoes/launcher/kj;->f:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/anddoes/launcher/kj;->a(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 139
    :cond_42
    const-string v0, "iconType"

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    iget-object v0, p0, Lcom/anddoes/launcher/kj;->e:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_36

    .line 142
    const-string v0, "iconPackage"

    .line 143
    iget-object v1, p0, Lcom/anddoes/launcher/kj;->e:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "iconResource"

    .line 145
    iget-object v1, p0, Lcom/anddoes/launcher/kj;->e:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/anddoes/launcher/kj;->f:Landroid/graphics/Bitmap;

    .line 92
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShortcutInfo(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anddoes/launcher/kj;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
