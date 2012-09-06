.class final Lcom/anddoes/launcher/gq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/ContentResolver;

.field private final synthetic b:Landroid/net/Uri;

.field private final synthetic c:Lcom/anddoes/launcher/ec;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/anddoes/launcher/ec;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/gq;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/anddoes/launcher/gq;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/anddoes/launcher/gq;->c:Lcom/anddoes/launcher/ec;

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 514
    iget-object v0, p0, Lcom/anddoes/launcher/gq;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/anddoes/launcher/gq;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/anddoes/launcher/gq;->c:Lcom/anddoes/launcher/ec;

    iget v0, v0, Lcom/anddoes/launcher/ec;->i:I

    sparse-switch v0, :sswitch_data_4c

    .line 529
    :goto_f
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/anddoes/launcher/gq;->c:Lcom/anddoes/launcher/ec;

    iget-wide v1, v1, Lcom/anddoes/launcher/ec;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/anddoes/launcher/gq;->c:Lcom/anddoes/launcher/ec;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    return-void

    .line 517
    :sswitch_24
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/anddoes/launcher/gq;->c:Lcom/anddoes/launcher/ec;

    iget-wide v1, v1, Lcom/anddoes/launcher/ec;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/anddoes/launcher/gq;->c:Lcom/anddoes/launcher/ec;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_f

    .line 523
    :sswitch_39
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/anddoes/launcher/gq;->c:Lcom/anddoes/launcher/ec;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_f

    .line 526
    :sswitch_41
    sget-object v1, Lcom/anddoes/launcher/LauncherModel;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/anddoes/launcher/gq;->c:Lcom/anddoes/launcher/ec;

    check-cast v0, Lcom/anddoes/launcher/gn;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_f

    .line 515
    nop

    :sswitch_data_4c
    .sparse-switch
        0x0 -> :sswitch_39
        0x1 -> :sswitch_39
        0x2 -> :sswitch_24
        0x4 -> :sswitch_41
        0x3e9 -> :sswitch_39
    .end sparse-switch
.end method
