.class public Ldbxyzptlk/e/t;
.super Ldbxyzptlk/r/a;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/dropbox/android/filemanager/LocalEntry;

.field private c:Landroid/content/Intent;

.field private final d:Ldbxyzptlk/e/w;

.field private e:Ldbxyzptlk/e/v;

.field private f:Ldbxyzptlk/p/v;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Ldbxyzptlk/e/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/e/t;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/Intent;Ldbxyzptlk/e/w;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object v0, p0, Ldbxyzptlk/e/t;->e:Ldbxyzptlk/e/v;

    .line 95
    iput-object v0, p0, Ldbxyzptlk/e/t;->f:Ldbxyzptlk/p/v;

    .line 54
    iput-object p2, p0, Ldbxyzptlk/e/t;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 55
    iput-object p3, p0, Ldbxyzptlk/e/t;->c:Landroid/content/Intent;

    .line 56
    iput-object p4, p0, Ldbxyzptlk/e/t;->d:Ldbxyzptlk/e/w;

    .line 57
    return-void
.end method

.method private static a(Lcom/dropbox/android/service/w;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/dropbox/android/service/w;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    const-string v0, "wifi"

    .line 87
    :goto_8
    return-object v0

    .line 82
    :cond_9
    invoke-virtual {p0}, Lcom/dropbox/android/service/w;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 83
    const-string v0, "3g"

    goto :goto_8

    .line 84
    :cond_12
    invoke-virtual {p0}, Lcom/dropbox/android/service/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 85
    const-string v0, "2g"

    goto :goto_8

    .line 87
    :cond_1b
    const-string v0, "none"

    goto :goto_8
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 33
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/t;->a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v2

    .line 101
    iget-object v0, p0, Ldbxyzptlk/e/t;->d:Ldbxyzptlk/e/w;

    sget-object v3, Ldbxyzptlk/e/w;->b:Ldbxyzptlk/e/w;

    if-ne v0, v3, :cond_a9

    .line 102
    iget-object v0, p0, Ldbxyzptlk/e/t;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 104
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 105
    if-eqz v0, :cond_b6

    .line 106
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 107
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_46
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/service/t;->b()Lcom/dropbox/android/service/w;

    move-result-object v3

    invoke-static {v3}, Ldbxyzptlk/e/t;->a(Lcom/dropbox/android/service/w;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v4

    invoke-virtual {v4}, Ldbxyzptlk/h/b;->a()Ldbxyzptlk/h/g;

    move-result-object v4

    .line 114
    :try_start_5a
    iget-object v5, v2, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    iget-object v6, p0, Ldbxyzptlk/e/t;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v6, v6, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iget-object v4, v4, Ldbxyzptlk/h/g;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v0, v3, v4}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldbxyzptlk/p/v;

    move-result-object v0

    .line 116
    iput-object v0, p0, Ldbxyzptlk/e/t;->f:Ldbxyzptlk/p/v;

    .line 117
    iget-object v0, v0, Ldbxyzptlk/p/v;->a:Ljava/lang/String;

    .line 118
    sget-object v3, Ldbxyzptlk/e/t;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stream URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ldbxyzptlk/p/C; {:try_start_5a .. :try_end_82} :catch_83

    .line 135
    :goto_82
    return-object v0

    .line 120
    :catch_83
    move-exception v0

    .line 121
    sget-object v0, Ldbxyzptlk/e/t;->a:Ljava/lang/String;

    const-string v3, "Transcoding failed on the server, falling back."

    invoke-static {v0, v3}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object v1, p0, Ldbxyzptlk/e/t;->f:Ldbxyzptlk/p/v;

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldbxyzptlk/e/t;->c:Landroid/content/Intent;

    .line 132
    :cond_96
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/dropbox/android/util/bb;->a(I)Z

    move-result v0

    .line 133
    iget-object v1, v2, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    iget-object v2, p0, Ldbxyzptlk/e/t;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v2, v2, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Z)Ldbxyzptlk/l/j;

    move-result-object v0

    iget-object v0, v0, Ldbxyzptlk/l/j;->a:Ljava/lang/String;

    goto :goto_82

    .line 135
    :cond_a9
    iget-object v0, v2, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    iget-object v1, p0, Ldbxyzptlk/e/t;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldbxyzptlk/p/i;->c(Ljava/lang/String;)Ldbxyzptlk/l/j;

    move-result-object v0

    iget-object v0, v0, Ldbxyzptlk/l/j;->a:Ljava/lang/String;

    goto :goto_82

    :cond_b6
    move-object v0, v1

    goto :goto_46
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Ldbxyzptlk/e/t;->d:Ldbxyzptlk/e/w;

    sget-object v1, Ldbxyzptlk/e/w;->b:Ldbxyzptlk/e/w;

    if-ne v0, v1, :cond_22

    const v0, 0x7f09009f

    .line 67
    :goto_9
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    sget-object v0, Ldbxyzptlk/e/t;->a:Ljava/lang/String;

    const-string v1, "Error in SharingFileAsyncTask"

    invoke-static {v0, v1, p2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    sget-object v1, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v0, p2, v1}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 73
    return-void

    .line 65
    :cond_22
    const v0, 0x7f090085

    goto :goto_9
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 141
    if-eqz p2, :cond_f

    .line 142
    sget-object v0, Ldbxyzptlk/e/u;->a:[I

    iget-object v1, p0, Ldbxyzptlk/e/t;->d:Ldbxyzptlk/e/w;

    invoke-virtual {v1}, Ldbxyzptlk/e/w;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ac

    .line 181
    :cond_f
    :goto_f
    return-void

    .line 144
    :pswitch_10
    iget-object v0, p0, Ldbxyzptlk/e/t;->c:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Ldbxyzptlk/e/t;->c:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-static {}, Lcom/dropbox/android/util/h;->Q()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "component.shared.to"

    iget-object v2, p0, Ldbxyzptlk/e/t;->c:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    goto :goto_f

    .line 151
    :pswitch_34
    iget-object v0, p0, Ldbxyzptlk/e/t;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 152
    iget-object v0, p0, Ldbxyzptlk/e/t;->f:Ldbxyzptlk/p/v;

    if-eqz v0, :cond_7a

    .line 153
    sget-object v0, Ldbxyzptlk/e/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldbxyzptlk/e/t;->f:Ldbxyzptlk/p/v;

    iget-object v2, v2, Ldbxyzptlk/p/v;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Ldbxyzptlk/e/t;->c:Landroid/content/Intent;

    const-string v1, "EXTRA_CONTAINER"

    iget-object v2, p0, Ldbxyzptlk/e/t;->f:Ldbxyzptlk/p/v;

    iget-object v2, v2, Ldbxyzptlk/p/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Ldbxyzptlk/e/t;->f:Ldbxyzptlk/p/v;

    iget-object v0, v0, Ldbxyzptlk/p/v;->b:Ljava/lang/String;

    if-eqz v0, :cond_a3

    .line 156
    iget-object v0, p0, Ldbxyzptlk/e/t;->c:Landroid/content/Intent;

    const-string v1, "EXTRA_METADATA_URL"

    iget-object v2, p0, Ldbxyzptlk/e/t;->f:Ldbxyzptlk/p/v;

    iget-object v2, v2, Ldbxyzptlk/p/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    :cond_7a
    :goto_7a
    iget-object v0, p0, Ldbxyzptlk/e/t;->c:Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Ldbxyzptlk/e/t;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v2, v2, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Ldbxyzptlk/e/t;->c:Landroid/content/Intent;

    iget-object v1, p0, Ldbxyzptlk/e/t;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/b;->a(Landroid/content/Intent;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 170
    :try_start_8e
    iget-object v0, p0, Ldbxyzptlk/e/t;->c:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_93
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8e .. :try_end_93} :catch_95

    goto/16 :goto_f

    .line 171
    :catch_95
    move-exception v0

    .line 172
    iget-object v1, p0, Ldbxyzptlk/e/t;->e:Ldbxyzptlk/e/v;

    if-eqz v1, :cond_ab

    .line 173
    iget-object v0, p0, Ldbxyzptlk/e/t;->e:Ldbxyzptlk/e/v;

    iget-object v1, p0, Ldbxyzptlk/e/t;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-interface {v0, v1}, Ldbxyzptlk/e/v;->a(Lcom/dropbox/android/filemanager/LocalEntry;)V

    goto/16 :goto_f

    .line 158
    :cond_a3
    sget-object v0, Ldbxyzptlk/e/t;->a:Ljava/lang/String;

    const-string v1, "No Metadata URL."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 175
    :cond_ab
    throw v0

    .line 142
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_10
        :pswitch_34
    .end packed-switch
.end method

.method public final a(Ldbxyzptlk/e/v;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Ldbxyzptlk/e/t;->e:Ldbxyzptlk/e/v;

    .line 61
    return-void
.end method
