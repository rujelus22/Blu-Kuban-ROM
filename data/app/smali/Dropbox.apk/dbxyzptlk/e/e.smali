.class public Ldbxyzptlk/e/e;
.super Ldbxyzptlk/r/a;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/l;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:Z

.field b:Ljava/lang/ref/WeakReference;

.field protected c:Lcom/dropbox/android/taskqueue/m;

.field private e:Z

.field private final f:Lcom/dropbox/android/taskqueue/DownloadTask;

.field private g:Z

.field private h:J

.field private i:Ldbxyzptlk/e/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Ldbxyzptlk/e/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/e/e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v1, p0, Ldbxyzptlk/e/e;->a:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbxyzptlk/e/e;->e:Z

    .line 39
    iput-boolean v1, p0, Ldbxyzptlk/e/e;->g:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/e/e;->c:Lcom/dropbox/android/taskqueue/m;

    .line 52
    new-instance v0, Lcom/dropbox/android/taskqueue/DownloadTask;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/android/taskqueue/DownloadTask;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    iput-object v0, p0, Ldbxyzptlk/e/e;->f:Lcom/dropbox/android/taskqueue/DownloadTask;

    .line 53
    return-void
.end method

.method static synthetic a(Ldbxyzptlk/e/e;)Lcom/dropbox/android/taskqueue/DownloadTask;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Ldbxyzptlk/e/e;->f:Lcom/dropbox/android/taskqueue/DownloadTask;

    return-object v0
.end method


# virtual methods
.method public final varargs a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/io/File;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Ldbxyzptlk/e/e;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_16

    .line 85
    iget-object v0, p0, Ldbxyzptlk/e/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/z;

    .line 86
    if-eqz v0, :cond_16

    .line 87
    new-instance v1, Ldbxyzptlk/e/f;

    invoke-direct {v1, p0}, Ldbxyzptlk/e/f;-><init>(Ldbxyzptlk/e/e;)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/z;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 99
    :cond_16
    iget-object v0, p0, Ldbxyzptlk/e/e;->f:Lcom/dropbox/android/taskqueue/DownloadTask;

    invoke-virtual {v0, p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/taskqueue/l;)V

    .line 100
    iget-object v0, p0, Ldbxyzptlk/e/e;->f:Lcom/dropbox/android/taskqueue/DownloadTask;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->c()Lcom/dropbox/android/taskqueue/m;

    .line 102
    iget-object v0, p0, Ldbxyzptlk/e/e;->f:Lcom/dropbox/android/taskqueue/DownloadTask;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->h()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 24
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/e;->a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Ljava/io/File;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 126
    iget-boolean v0, p0, Ldbxyzptlk/e/e;->a:Z

    if-eqz v0, :cond_5

    .line 159
    :cond_4
    :goto_4
    return-void

    .line 130
    :cond_5
    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 132
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->m()Lcom/dropbox/android/util/ad;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/ad;->b(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Ldbxyzptlk/e/e;->i:Ldbxyzptlk/e/g;

    if-eqz v0, :cond_25

    .line 136
    iget-object v0, p0, Ldbxyzptlk/e/e;->i:Ldbxyzptlk/e/g;

    invoke-interface {v0, p2, p1}, Ldbxyzptlk/e/g;->a(Ljava/io/File;Landroid/content/Context;)V

    .line 139
    :cond_25
    iget-object v0, p0, Ldbxyzptlk/e/e;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Ldbxyzptlk/e/e;->e:Z

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Ldbxyzptlk/e/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/z;

    .line 141
    if-eqz v0, :cond_4

    .line 142
    invoke-virtual {v0}, Lcom/dropbox/android/widget/z;->dismiss()V

    goto :goto_4

    .line 146
    :cond_3b
    iget-object v0, p0, Ldbxyzptlk/e/e;->c:Lcom/dropbox/android/taskqueue/m;

    invoke-static {v0, p1}, Lcom/dropbox/android/util/aX;->a(Lcom/dropbox/android/taskqueue/m;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_4b

    .line 148
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    :cond_4b
    iget-object v0, p0, Ldbxyzptlk/e/e;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Ldbxyzptlk/e/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/z;

    .line 154
    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {v0}, Lcom/dropbox/android/widget/z;->dismiss()V

    goto :goto_4
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Ldbxyzptlk/e/e;->f:Lcom/dropbox/android/taskqueue/DownloadTask;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->f()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_3a

    .line 75
    sget-object v1, Ldbxyzptlk/e/e;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_30
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    sget-object v1, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v0, p2, v1}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 80
    return-void

    .line 77
    :cond_3a
    sget-object v0, Ldbxyzptlk/e/e;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading file, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 24
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/e;->a(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Ldbxyzptlk/e/e;->g:Z

    .line 164
    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ldbxyzptlk/e/e;->publishProgress([Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;JJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Ldbxyzptlk/e/e;->g:Z

    .line 182
    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ldbxyzptlk/e/e;->publishProgress([Ljava/lang/Object;)V

    .line 183
    iput-wide p5, p0, Ldbxyzptlk/e/e;->h:J

    .line 184
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/k;Lcom/dropbox/android/taskqueue/m;Landroid/net/Uri;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Ldbxyzptlk/e/e;->g:Z

    .line 170
    iput-object p2, p0, Ldbxyzptlk/e/e;->c:Lcom/dropbox/android/taskqueue/m;

    .line 171
    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ldbxyzptlk/e/e;->publishProgress([Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public final a(Lcom/dropbox/android/widget/z;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldbxyzptlk/e/e;->b:Ljava/lang/ref/WeakReference;

    .line 61
    return-void
.end method

.method protected final a(Ldbxyzptlk/e/g;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Ldbxyzptlk/e/e;->i:Ldbxyzptlk/e/g;

    .line 65
    return-void
.end method

.method protected final varargs a([Ljava/lang/Long;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x3e8

    .line 107
    iget-object v0, p0, Ldbxyzptlk/e/e;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_37

    .line 108
    iget-object v0, p0, Ldbxyzptlk/e/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/z;

    .line 109
    if-eqz v0, :cond_37

    .line 110
    iget-boolean v1, p0, Ldbxyzptlk/e/e;->g:Z

    if-eqz v1, :cond_2c

    .line 111
    iput-boolean v6, p0, Ldbxyzptlk/e/e;->g:Z

    .line 112
    iget-object v1, p0, Ldbxyzptlk/e/e;->f:Lcom/dropbox/android/taskqueue/DownloadTask;

    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/DownloadTask;->f()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_2c

    iget-wide v2, v1, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2c

    .line 115
    iget-wide v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    div-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/z;->b(I)V

    .line 119
    :cond_2c
    aget-object v1, p1, v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    div-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/z;->a(I)V

    .line 122
    :cond_37
    return-void
.end method

.method public final b()Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Ldbxyzptlk/e/e;->f:Lcom/dropbox/android/taskqueue/DownloadTask;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->f()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbxyzptlk/e/e;->a:Z

    .line 177
    return-void
.end method

.method public final c(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    iget-wide v2, p0, Ldbxyzptlk/e/e;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ldbxyzptlk/e/e;->publishProgress([Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ldbxyzptlk/e/e;->a([Ljava/lang/Long;)V

    return-void
.end method
