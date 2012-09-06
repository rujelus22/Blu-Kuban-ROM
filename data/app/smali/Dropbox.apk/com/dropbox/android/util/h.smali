.class public Lcom/dropbox/android/util/h;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/TimerTask;

.field private static final c:Ljava/lang/Object;

.field private static d:Ljava/io/File;

.field private static e:Ljava/io/BufferedWriter;

.field private static f:Ljava/io/File;

.field private static volatile g:Z

.field private static final h:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final i:Ljava/util/Timer;

.field private static j:I

.field private static final k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    const-class v0, Lcom/dropbox/android/util/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    .line 65
    sput-object v1, Lcom/dropbox/android/util/h;->b:Ljava/util/TimerTask;

    .line 523
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/h;->c:Ljava/lang/Object;

    .line 529
    sput-object v1, Lcom/dropbox/android/util/h;->e:Ljava/io/BufferedWriter;

    .line 534
    sput-object v1, Lcom/dropbox/android/util/h;->f:Ljava/io/File;

    .line 541
    sput-boolean v2, Lcom/dropbox/android/util/h;->g:Z

    .line 546
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/h;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 662
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/h;->i:Ljava/util/Timer;

    .line 718
    sput v2, Lcom/dropbox/android/util/h;->j:I

    .line 1053
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/h;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    return-void
.end method

.method public static A()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 183
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "video.error"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static B()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 191
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "need.dotless.intent"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static C()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 195
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "uncaught.exception"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static D()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 199
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "upload.queue.bump"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static E()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 203
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "upload.queue.schedule"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static F()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 207
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "camera.gallery.refresh"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static G()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 211
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "unknown.file.extension"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static H()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 215
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "gallery.showing.image.set"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static I()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 219
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "gallery.new.image.shown"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static J()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 223
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "gallery.pinch.start"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static K()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 227
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "gallery.pinch.end"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static L()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 237
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "app.link"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static M()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 241
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "app.unlink"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static N()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 246
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "cu.turned_on"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static O()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 250
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "cu.turned_off"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static P()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 254
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "cu.skipped"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static Q()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 258
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "share_link.generate"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static R()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 265
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "image.view"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static S()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 269
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "folder.rename"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static T()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 273
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "folder.create"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static U()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 277
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "tell_friends_about_dropbox"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static V()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 285
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "help.view_TOS"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static W()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 293
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "help.view_privacy"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static X()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 301
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "help.send_feedback"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static Y()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 308
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "new_text_file"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static Z()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 312
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "help.start_video"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 69
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "tour.view"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)Lcom/dropbox/android/util/r;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    if-eqz p1, :cond_7

    .line 423
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_7
    new-instance v1, Lcom/dropbox/android/util/r;

    const-string v2, "broadcast.received"

    invoke-direct {v1, v2}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    const-string v2, "class"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "intent.action"

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/android/util/r;
    .registers 3
    .parameter

    .prologue
    .line 133
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "browser.browse"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    const-string v1, "dir"

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/android/util/r;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;)Lcom/dropbox/android/util/r;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 391
    new-instance v0, Lcom/dropbox/android/util/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "act."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    const-string v1, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    .line 392
    const-string v1, "create"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "network_state"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 393
    :cond_36
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 394
    if-eqz v1, :cond_47

    .line 395
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_47

    .line 397
    const-string v2, "intent.action"

    invoke-virtual {v0, v2, v1}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 400
    :cond_47
    invoke-virtual {p1}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 401
    if-eqz v1, :cond_56

    .line 402
    const-string v2, "caller"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 405
    :cond_56
    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Service;)Lcom/dropbox/android/util/r;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 409
    new-instance v0, Lcom/dropbox/android/util/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    const-string v1, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)Lcom/dropbox/android/util/r;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 413
    new-instance v0, Lcom/dropbox/android/util/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    const-string v1, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/dropbox/android/filemanager/LocalEntry;)Lcom/dropbox/android/util/r;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 360
    new-instance v0, Lcom/dropbox/android/util/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    const-string v1, "mime"

    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "extension"

    iget-object v0, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->q(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "size"

    iget-wide v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    .line 363
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 374
    new-instance v0, Lcom/dropbox/android/util/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 432
    new-instance v0, Lcom/dropbox/android/util/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    const-string v1, "notification"

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)V
    .registers 4
    .parameter

    .prologue
    .line 645
    sget-boolean v0, Lcom/dropbox/android/util/h;->g:Z

    if-nez v0, :cond_5

    .line 657
    :goto_4
    return-void

    .line 648
    :cond_5
    invoke-static {}, Lcom/dropbox/android/util/h;->an()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 649
    sget-object v0, Lcom/dropbox/android/util/h;->i:Ljava/util/Timer;

    new-instance v1, Lcom/dropbox/android/util/l;

    invoke-direct {v1}, Lcom/dropbox/android/util/l;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_4
.end method

.method public static a(Lcom/dropbox/android/util/q;)V
    .registers 7
    .parameter

    .prologue
    const/16 v3, 0xa

    .line 725
    sget-boolean v0, Lcom/dropbox/android/util/h;->g:Z

    if-nez v0, :cond_c

    .line 726
    sget-object v0, Lcom/dropbox/android/util/h;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 761
    :cond_b
    :goto_b
    return-void

    .line 740
    :cond_c
    :try_start_c
    invoke-interface {p0}, Lcom/dropbox/android/util/q;->a()Ljava/lang/String;

    move-result-object v0

    .line 741
    if-eqz v0, :cond_b

    .line 742
    sget-object v1, Lcom/dropbox/android/util/h;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_48

    .line 743
    :try_start_15
    sget-object v2, Lcom/dropbox/android/util/h;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 744
    sget-object v0, Lcom/dropbox/android/util/h;->e:Ljava/io/BufferedWriter;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 745
    sget v0, Lcom/dropbox/android/util/h;->j:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/dropbox/android/util/h;->j:I

    .line 746
    sget v0, Lcom/dropbox/android/util/h;->j:I

    if-lt v0, v3, :cond_43

    .line 747
    const/4 v0, 0x0

    sput v0, Lcom/dropbox/android/util/h;->j:I

    .line 748
    sget-object v0, Lcom/dropbox/android/util/h;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 749
    sget-object v0, Lcom/dropbox/android/util/h;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x80000

    cmp-long v0, v2, v4

    if-lez v0, :cond_43

    .line 750
    invoke-static {}, Lcom/dropbox/android/util/h;->as()V

    .line 753
    :cond_43
    monitor-exit v1

    goto :goto_b

    :catchall_45
    move-exception v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_15 .. :try_end_47} :catchall_45

    :try_start_47
    throw v0
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_48} :catch_48

    .line 758
    :catch_48
    move-exception v0

    .line 759
    sget-object v1, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    const-string v2, "logEvent"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method private static a(Ldbxyzptlk/h/g;)V
    .registers 6
    .parameter

    .prologue
    .line 667
    sget-object v1, Lcom/dropbox/android/util/h;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 669
    :try_start_3
    sget-object v0, Lcom/dropbox/android/util/h;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/dropbox/android/util/O;->a(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v0

    .line 670
    if-nez v0, :cond_14

    .line 671
    sget-object v0, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    const-string v2, "Couldn\'t create stream."

    invoke-static {v0, v2}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_50
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_53

    .line 672
    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_50

    .line 705
    :goto_13
    return-void

    .line 674
    :cond_14
    :try_start_14
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x2000

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    sput-object v2, Lcom/dropbox/android/util/h;->e:Ljava/io/BufferedWriter;

    .line 682
    new-instance v0, Lcom/dropbox/android/util/s;

    invoke-direct {v0, p0}, Lcom/dropbox/android/util/s;-><init>(Ldbxyzptlk/h/g;)V

    .line 683
    sget-boolean v2, Lcom/dropbox/android/util/h;->g:Z

    if-nez v2, :cond_36

    .line 684
    const-string v2, "early.event.count"

    sget-object v3, Lcom/dropbox/android/util/h;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    .line 686
    :cond_36
    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->a()Ljava/lang/String;

    move-result-object v0

    .line 687
    sget-object v2, Lcom/dropbox/android/util/h;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 688
    sget-object v0, Lcom/dropbox/android/util/h;->e:Ljava/io/BufferedWriter;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 689
    sget-object v0, Lcom/dropbox/android/util/h;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 693
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dropbox/android/util/h;->g:Z
    :try_end_4e
    .catchall {:try_start_14 .. :try_end_4e} :catchall_50
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_4e} :catch_53

    .line 704
    :goto_4e
    :try_start_4e
    monitor-exit v1

    goto :goto_13

    :catchall_50
    move-exception v0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_50

    throw v0

    .line 694
    :catch_53
    move-exception v0

    .line 697
    :try_start_54
    sget-object v2, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initWriter, sInitialized = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/dropbox/android/util/h;->g:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v0, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V
    :try_end_77
    .catchall {:try_start_54 .. :try_end_77} :catchall_50

    goto :goto_4e
.end method

.method public static a(Ljava/io/File;)V
    .registers 7
    .parameter

    .prologue
    .line 554
    sget-object v1, Lcom/dropbox/android/util/h;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 555
    :try_start_3
    sget-object v0, Lcom/dropbox/android/util/h;->d:Ljava/io/File;

    if-eqz v0, :cond_10

    .line 556
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 563
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    .line 558
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 559
    new-instance v0, Ljava/io/File;

    const-string v2, "dbl.dbl"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/android/util/h;->d:Ljava/io/File;

    .line 560
    sput-object p0, Lcom/dropbox/android/util/h;->f:Ljava/io/File;

    .line 562
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/h/b;->a()Ldbxyzptlk/h/g;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/h;->a(Ldbxyzptlk/h/g;)V

    .line 563
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_d

    .line 565
    sget-boolean v0, Lcom/dropbox/android/util/h;->g:Z

    if-nez v0, :cond_2f

    .line 591
    :goto_2e
    return-void

    .line 571
    :cond_2f
    invoke-static {}, Lcom/dropbox/android/util/h;->at()V

    .line 573
    invoke-static {}, Lcom/dropbox/android/util/h;->av()V

    .line 583
    sget-object v0, Lcom/dropbox/android/util/h;->i:Ljava/util/Timer;

    new-instance v1, Lcom/dropbox/android/util/i;

    invoke-direct {v1}, Lcom/dropbox/android/util/i;-><init>()V

    const-wide/16 v2, 0x1388

    const-wide/32 v4, 0x1808580

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_2e
.end method

.method public static aa()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 319
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "edit_existing_text_file"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static ab()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 323
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "refresh_file_browser"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static ac()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 337
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "password.reset.sent"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static ad()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 349
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "app.create"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized ae()V
    .registers 5

    .prologue
    .line 628
    const-class v1, Lcom/dropbox/android/util/h;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/dropbox/android/util/h;->b:Ljava/util/TimerTask;

    if-eqz v0, :cond_11

    .line 629
    sget-object v0, Lcom/dropbox/android/util/h;->b:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 630
    sget-object v0, Lcom/dropbox/android/util/h;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 632
    :cond_11
    new-instance v0, Lcom/dropbox/android/util/k;

    invoke-direct {v0}, Lcom/dropbox/android/util/k;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/h;->b:Ljava/util/TimerTask;

    .line 638
    sget-object v0, Lcom/dropbox/android/util/h;->i:Ljava/util/Timer;

    sget-object v2, Lcom/dropbox/android/util/h;->b:Ljava/util/TimerTask;

    const-wide/32 v3, 0x927c0

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    .line 639
    monitor-exit v1

    return-void

    .line 628
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static af()V
    .registers 4

    .prologue
    .line 767
    sget-boolean v0, Lcom/dropbox/android/util/h;->g:Z

    if-nez v0, :cond_5

    .line 781
    :goto_4
    return-void

    .line 770
    :cond_5
    sget-object v1, Lcom/dropbox/android/util/h;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 772
    :try_start_8
    sget-object v0, Lcom/dropbox/android/util/h;->e:Ljava/io/BufferedWriter;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_a} :catch_1b

    if-nez v0, :cond_11

    .line 773
    :try_start_c
    monitor-exit v1

    goto :goto_4

    .line 780
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_e

    throw v0

    .line 775
    :cond_11
    :try_start_11
    sget-object v0, Lcom/dropbox/android/util/h;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 776
    const/4 v0, 0x0

    sput v0, Lcom/dropbox/android/util/h;->j:I
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_1b

    .line 780
    :goto_19
    :try_start_19
    monitor-exit v1

    goto :goto_4

    .line 777
    :catch_1b
    move-exception v0

    .line 778
    sget-object v2, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    const-string v3, "flushLog"

    invoke-static {v2, v3, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_e

    goto :goto_19
.end method

.method public static ag()V
    .registers 3

    .prologue
    .line 966
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v1

    .line 967
    const/4 v0, 0x0

    .line 968
    invoke-virtual {v1}, Ldbxyzptlk/j/a;->k()Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 971
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    invoke-virtual {v1, v0}, Ldbxyzptlk/j/a;->a(Ljava/lang/String;)V

    .line 973
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldbxyzptlk/j/a;->a(I)V

    .line 975
    :cond_1a
    invoke-static {}, Lcom/dropbox/android/util/h;->ar()Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "series.uuid"

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 976
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/dropbox/android/util/h;->a(J)V

    .line 977
    return-void
.end method

.method static synthetic ah()V
    .registers 0

    .prologue
    .line 55
    invoke-static {}, Lcom/dropbox/android/util/h;->ax()V

    return-void
.end method

.method static synthetic ai()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/dropbox/android/util/h;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic aj()Ljava/io/File;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/dropbox/android/util/h;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic ak()Lcom/dropbox/android/util/r;
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/dropbox/android/util/h;->ao()Lcom/dropbox/android/util/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic al()V
    .registers 0

    .prologue
    .line 55
    invoke-static {}, Lcom/dropbox/android/util/h;->au()V

    return-void
.end method

.method static synthetic am()V
    .registers 0

    .prologue
    .line 55
    invoke-static {}, Lcom/dropbox/android/util/h;->at()V

    return-void
.end method

.method private static an()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 329
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "rotation.forced"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static ao()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 333
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "rotation.scheduled"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static ap()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 341
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "log.up"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static aq()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 345
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "deleted.big.log"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static ar()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 353
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "logseries.newUUID"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static as()V
    .registers 4

    .prologue
    .line 607
    sget-object v0, Lcom/dropbox/android/util/h;->i:Ljava/util/Timer;

    new-instance v1, Lcom/dropbox/android/util/j;

    invoke-direct {v1}, Lcom/dropbox/android/util/j;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 621
    return-void
.end method

.method private static declared-synchronized at()V
    .registers 14

    .prologue
    const-wide/32 v12, 0x15180

    const-wide/16 v10, 0x3e8

    .line 787
    const-class v4, Lcom/dropbox/android/util/h;

    monitor-enter v4

    :try_start_8
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v5

    .line 788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    .line 789
    invoke-virtual {v5}, Ldbxyzptlk/j/m;->C()J

    move-result-wide v0

    .line 791
    sget-object v2, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nextRotation: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_5b

    .line 795
    add-long v0, v6, v12

    .line 796
    invoke-virtual {v5, v0, v1}, Ldbxyzptlk/j/m;->a(J)V

    .line 797
    sget-object v2, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no scheduled rotation, scheduling it for "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v8, v0, v6

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " seconds from now."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_5b
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    invoke-virtual {v2}, Ldbxyzptlk/h/b;->a()Ldbxyzptlk/h/g;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/android/util/h;->b(Ldbxyzptlk/h/g;)Ljava/lang/String;

    move-result-object v3

    .line 801
    invoke-virtual {v5}, Ldbxyzptlk/j/m;->D()Ljava/lang/String;

    move-result-object v2

    .line 802
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7d

    .line 803
    invoke-virtual {v5, v3}, Ldbxyzptlk/j/m;->g(Ljava/lang/String;)V

    .line 806
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    move-object v2, v3

    .line 811
    :cond_7d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c8

    const/4 v2, 0x1

    .line 813
    :goto_84
    cmp-long v5, v6, v0

    if-gez v5, :cond_8a

    if-eqz v2, :cond_ba

    .line 814
    :cond_8a
    sget-object v0, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-static {}, Lcom/dropbox/android/util/h;->ao()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 816
    invoke-static {}, Lcom/dropbox/android/util/h;->au()V

    .line 817
    sget-object v0, Lcom/dropbox/android/util/h;->i:Ljava/util/Timer;

    new-instance v1, Lcom/dropbox/android/util/m;

    invoke-direct {v1}, Lcom/dropbox/android/util/m;-><init>()V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 825
    add-long v0, v6, v12

    .line 829
    :cond_ba
    sub-long/2addr v0, v6

    mul-long/2addr v0, v10

    .line 830
    sget-object v2, Lcom/dropbox/android/util/h;->i:Ljava/util/Timer;

    new-instance v3, Lcom/dropbox/android/util/n;

    invoke-direct {v3}, Lcom/dropbox/android/util/n;-><init>()V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_c6
    .catchall {:try_start_8 .. :try_end_c6} :catchall_ca

    .line 838
    monitor-exit v4

    return-void

    .line 811
    :cond_c8
    const/4 v2, 0x0

    goto :goto_84

    .line 787
    :catchall_ca
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private static au()V
    .registers 9

    .prologue
    .line 864
    sget-object v0, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    const-string v1, "Rotating."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v1, 0x0

    .line 867
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v3

    .line 869
    sget-object v4, Lcom/dropbox/android/util/h;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 871
    :try_start_f
    sget-object v0, Lcom/dropbox/android/util/h;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_76
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_6d

    .line 876
    :goto_14
    :try_start_14
    sget-object v0, Lcom/dropbox/android/util/h;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_79

    .line 877
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    const-string v5, "Zero-length file."

    invoke-direct {v2, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sget-object v5, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v0, v2, v5}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 878
    sget-object v0, Lcom/dropbox/android/util/h;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/dropbox/android/util/h;->f(Ljava/io/File;)Z

    move-result v0

    move v2, v0

    .line 894
    :goto_37
    if-eqz v2, :cond_c2

    .line 895
    invoke-static {}, Lcom/dropbox/android/util/h;->aw()V

    .line 896
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/h/b;->a()Ldbxyzptlk/h/g;

    move-result-object v0

    .line 897
    invoke-static {v0}, Lcom/dropbox/android/util/h;->a(Ldbxyzptlk/h/g;)V

    .line 899
    :goto_47
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_14 .. :try_end_48} :catchall_76

    .line 901
    if-eqz v2, :cond_5e

    .line 903
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/dropbox/android/util/o;

    invoke-direct {v2}, Lcom/dropbox/android/util/o;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 911
    invoke-static {v0}, Lcom/dropbox/android/util/h;->b(Ldbxyzptlk/h/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ldbxyzptlk/j/m;->g(Ljava/lang/String;)V

    .line 914
    :cond_5e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 915
    const-wide/32 v4, 0x15180

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ldbxyzptlk/j/m;->a(J)V

    .line 916
    return-void

    .line 872
    :catch_6d
    move-exception v0

    .line 873
    :try_start_6e
    sget-object v2, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    const-string v5, "rotateLog"

    invoke-static {v2, v5, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 899
    :catchall_76
    move-exception v0

    monitor-exit v4
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_76

    throw v0

    .line 886
    :cond_79
    :try_start_79
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/dropbox/android/util/h;->f:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dbup-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dbu"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 887
    sget-object v2, Lcom/dropbox/android/util/h;->d:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_be

    .line 888
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    const-string v5, "Failed to rename, deleting instead"

    invoke-direct {v2, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sget-object v5, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v0, v2, v5}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 889
    sget-object v0, Lcom/dropbox/android/util/h;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/dropbox/android/util/h;->e(Ljava/io/File;)Z
    :try_end_ba
    .catchall {:try_start_79 .. :try_end_ba} :catchall_76

    move-result v0

    move v2, v0

    goto/16 :goto_37

    .line 891
    :cond_be
    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_37

    :cond_c2
    move-object v0, v1

    goto :goto_47
.end method

.method private static av()V
    .registers 2

    .prologue
    .line 986
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Ldbxyzptlk/j/a;->k()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ldbxyzptlk/j/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 988
    invoke-static {}, Lcom/dropbox/android/util/h;->ag()V

    .line 990
    :cond_13
    return-void
.end method

.method private static aw()V
    .registers 2

    .prologue
    .line 993
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v0

    .line 994
    invoke-virtual {v0}, Ldbxyzptlk/j/a;->k()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 995
    invoke-virtual {v0}, Ldbxyzptlk/j/a;->c()I

    move-result v1

    .line 996
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/a;->a(I)V

    .line 998
    :cond_13
    return-void
.end method

.method private static ax()V
    .registers 23

    .prologue
    .line 1098
    invoke-static {}, Lcom/dropbox/android/util/S;->a()V

    .line 1099
    invoke-static {}, Lcom/dropbox/android/util/h;->ay()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1167
    :goto_9
    return-void

    .line 1102
    :cond_a
    sget-object v20, Lcom/dropbox/android/util/h;->k:Ljava/lang/Object;

    monitor-enter v20

    .line 1103
    :try_start_d
    sget-object v2, Lcom/dropbox/android/util/h;->f:Ljava/io/File;

    invoke-static {v2}, Lcom/dropbox/android/util/h;->b(Ljava/io/File;)[Ljava/io/File;

    move-result-object v21

    .line 1104
    sget-object v2, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " matching files."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_3c
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_140

    aget-object v3, v21, v19

    .line 1106
    invoke-static {v3}, Lcom/dropbox/android/util/h;->d(Ljava/io/File;)Ldbxyzptlk/h/g;

    move-result-object v2

    .line 1107
    if-nez v2, :cond_147

    .line 1108
    sget-object v2, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    const-string v4, "Couldn\'t parse header, using current UserInfo."

    invoke-static {v2, v4}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    invoke-virtual {v2}, Ldbxyzptlk/h/b;->a()Ldbxyzptlk/h/g;

    move-result-object v2

    move-object/from16 v18, v2

    .line 1116
    :goto_5b
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "dbup-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_143

    .line 1117
    invoke-static {v3}, Lcom/dropbox/android/util/h;->g(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 1118
    if-eqz v2, :cond_143

    move-object/from16 v17, v2

    .line 1122
    :goto_6f
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gzdbup-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    .line 1125
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x400000

    cmp-long v2, v2, v4

    if-lez v2, :cond_9d

    .line 1126
    invoke-static {}, Lcom/dropbox/android/util/h;->aq()Lcom/dropbox/android/util/r;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/util/r;->c()V

    .line 1127
    invoke-static/range {v17 .. v17}, Lcom/dropbox/android/util/h;->f(Ljava/io/File;)Z

    .line 1105
    :cond_98
    :goto_98
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto :goto_3c

    .line 1134
    :cond_9d
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v10, v2, v4
    :try_end_a5
    .catchall {:try_start_d .. :try_end_a5} :catchall_108

    .line 1135
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_a8
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ge v0, v2, :cond_98

    .line 1136
    const/4 v12, 0x0

    .line 1138
    :try_start_ae
    invoke-static/range {v17 .. v17}, Lcom/dropbox/android/util/O;->b(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v12

    .line 1139
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v2

    iget-object v2, v2, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    const-string v3, "android"

    move-object/from16 v0, v18

    iget-object v4, v0, Ldbxyzptlk/h/g;->b:Ljava/lang/String;

    sget-object v5, Ldbxyzptlk/h/e;->d:Ldbxyzptlk/h/e;

    move-object/from16 v0, v18

    iget-object v6, v0, Ldbxyzptlk/h/g;->h:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v7, v0, Ldbxyzptlk/h/g;->f:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v8, v0, Ldbxyzptlk/h/g;->d:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v9, v0, Ldbxyzptlk/h/g;->e:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual/range {v2 .. v15}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/h/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/io/InputStream;JZ)V

    .line 1143
    invoke-static {}, Lcom/dropbox/android/util/h;->ap()Lcom/dropbox/android/util/r;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v2

    const-string v3, "attempt"

    move/from16 v0, v16

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v2

    const-string v3, "gzipped"

    invoke-virtual {v2, v3, v15}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/util/r;->c()V

    .line 1144
    invoke-static/range {v17 .. v17}, Lcom/dropbox/android/util/h;->f(Ljava/io/File;)Z
    :try_end_104
    .catchall {:try_start_ae .. :try_end_104} :catchall_13b
    .catch Ldbxyzptlk/m/b; {:try_start_ae .. :try_end_104} :catch_10b
    .catch Ldbxyzptlk/m/a; {:try_start_ae .. :try_end_104} :catch_11b
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_104} :catch_12b

    .line 1162
    :try_start_104
    invoke-static {v12}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    goto :goto_98

    .line 1166
    :catchall_108
    move-exception v2

    monitor-exit v20
    :try_end_10a
    .catchall {:try_start_104 .. :try_end_10a} :catchall_108

    throw v2

    .line 1146
    :catch_10b
    move-exception v2

    .line 1148
    :try_start_10c
    sget-object v3, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    const-string v4, "Failed to upload"

    invoke-static {v3, v4, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_113
    .catchall {:try_start_10c .. :try_end_113} :catchall_13b

    .line 1162
    :try_start_113
    invoke-static {v12}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_108

    .line 1135
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_a8

    .line 1149
    :catch_11b
    move-exception v2

    .line 1152
    :try_start_11c
    sget-object v3, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    const-string v4, "Failed to upload"

    invoke-static {v3, v4, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1153
    invoke-static/range {v17 .. v17}, Lcom/dropbox/android/util/h;->f(Ljava/io/File;)Z
    :try_end_126
    .catchall {:try_start_11c .. :try_end_126} :catchall_13b

    .line 1162
    :try_start_126
    invoke-static {v12}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_108

    goto/16 :goto_98

    .line 1155
    :catch_12b
    move-exception v2

    .line 1158
    :try_start_12c
    sget-object v3, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    const-string v4, "Failed to upload"

    invoke-static {v3, v4, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    invoke-static/range {v17 .. v17}, Lcom/dropbox/android/util/h;->f(Ljava/io/File;)Z
    :try_end_136
    .catchall {:try_start_12c .. :try_end_136} :catchall_13b

    .line 1162
    :try_start_136
    invoke-static {v12}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    goto/16 :goto_98

    :catchall_13b
    move-exception v2

    invoke-static {v12}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    throw v2

    .line 1166
    :cond_140
    monitor-exit v20
    :try_end_141
    .catchall {:try_start_136 .. :try_end_141} :catchall_108

    goto/16 :goto_9

    :cond_143
    move-object/from16 v17, v3

    goto/16 :goto_6f

    :cond_147
    move-object/from16 v18, v2

    goto/16 :goto_5b
.end method

.method private static ay()Z
    .registers 2

    .prologue
    .line 1226
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/service/t;->b()Lcom/dropbox/android/service/w;

    move-result-object v0

    .line 1227
    invoke-virtual {v0}, Lcom/dropbox/android/service/w;->a()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/dropbox/android/service/w;->d()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static b()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 73
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "current.settings.state"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 383
    new-instance v0, Lcom/dropbox/android/util/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ldbxyzptlk/h/g;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 1236
    const-string v0, "|"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ldbxyzptlk/h/g;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ldbxyzptlk/h/g;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ldbxyzptlk/h/g;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ldbxyzptlk/h/g;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Ldbxyzptlk/h/g;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Ldbxyzptlk/h/g;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Ldbxyzptlk/h/g;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/File;)[Ljava/io/File;
    .registers 2
    .parameter

    .prologue
    .line 919
    new-instance v0, Lcom/dropbox/android/util/p;

    invoke-direct {v0}, Lcom/dropbox/android/util/p;-><init>()V

    .line 925
    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 77
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "camera.upload.tour.btn"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1001
    .line 1003
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lcom/dropbox/android/util/h;->h(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_17

    .line 1004
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_25
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_27

    move-result-object v0

    .line 1008
    invoke-static {v1}, Ldbxyzptlk/z/c;->a(Ljava/io/Reader;)V

    :goto_16
    return-object v0

    .line 1005
    :catch_17
    move-exception v1

    move-object v1, v0

    .line 1008
    :goto_19
    invoke-static {v1}, Ldbxyzptlk/z/c;->a(Ljava/io/Reader;)V

    goto :goto_16

    :catchall_1d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_21
    invoke-static {v1}, Ldbxyzptlk/z/c;->a(Ljava/io/Reader;)V

    throw v0

    :catchall_25
    move-exception v0

    goto :goto_21

    .line 1005
    :catch_27
    move-exception v2

    goto :goto_19
.end method

.method public static d()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 81
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "quickaction.btn.click"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static d(Ljava/io/File;)Ldbxyzptlk/h/g;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1017
    invoke-static {p0}, Lcom/dropbox/android/util/h;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 1018
    if-nez v0, :cond_a

    move-object v0, v2

    .line 1043
    :goto_9
    return-object v0

    .line 1022
    :cond_a
    :try_start_a
    new-instance v3, Ldbxyzptlk/C/b;

    invoke-direct {v3}, Ldbxyzptlk/C/b;-><init>()V

    invoke-virtual {v3, v0}, Ldbxyzptlk/C/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1023
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_97

    .line 1024
    new-instance v3, Ldbxyzptlk/h/g;

    invoke-direct {v3}, Ldbxyzptlk/h/g;-><init>()V

    .line 1026
    check-cast v0, Ljava/util/Map;

    .line 1027
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "APP_VERSION"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "USER_ID"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "DEVICE_ID"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "PHONE_MODEL"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "ANDROID_VERSION"

    aput-object v6, v4, v5

    .line 1028
    array-length v5, v4

    :goto_3b
    if-ge v1, v5, :cond_62

    aget-object v6, v4, v1

    .line 1029
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5f

    .line 1030
    sget-object v0, Lcom/dropbox/android/util/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required header field missing or null: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 1031
    goto :goto_9

    .line 1028
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 1034
    :cond_62
    const-string v1, "APP_VERSION"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Ldbxyzptlk/h/g;->b:Ljava/lang/String;

    .line 1035
    const-string v1, "USER_ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Ldbxyzptlk/h/g;->h:Ljava/lang/String;

    .line 1036
    const-string v1, "DEVICE_ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Ldbxyzptlk/h/g;->f:Ljava/lang/String;

    .line 1037
    const-string v1, "PHONE_MODEL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Ldbxyzptlk/h/g;->d:Ljava/lang/String;

    .line 1038
    const-string v1, "ANDROID_VERSION"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Ldbxyzptlk/h/g;->e:Ljava/lang/String;
    :try_end_94
    .catch Ldbxyzptlk/C/c; {:try_start_a .. :try_end_94} :catch_9a

    move-object v0, v3

    .line 1039
    goto/16 :goto_9

    :cond_97
    move-object v0, v2

    .line 1041
    goto/16 :goto_9

    .line 1042
    :catch_9a
    move-exception v0

    move-object v0, v2

    .line 1043
    goto/16 :goto_9
.end method

.method public static e()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 85
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "quickaction.show"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static e(Ljava/io/File;)Z
    .registers 3
    .parameter

    .prologue
    .line 1062
    invoke-static {p0}, Lcom/dropbox/android/util/h;->f(Ljava/io/File;)Z

    move-result v0

    .line 1063
    if-nez v0, :cond_9

    .line 1064
    const/4 v1, 0x0

    sput-boolean v1, Lcom/dropbox/android/util/h;->g:Z

    .line 1066
    :cond_9
    return v0
.end method

.method public static f()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 89
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "quickaction.dismiss"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static f(Ljava/io/File;)Z
    .registers 6
    .parameter

    .prologue
    .line 1075
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1076
    const/4 v0, 0x1

    .line 1083
    :cond_7
    :goto_7
    return v0

    .line 1078
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1079
    if-nez v0, :cond_7

    .line 1080
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v2, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    goto :goto_7
.end method

.method public static g()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 93
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "custom.intent.chooser"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static g(Ljava/io/File;)Ljava/io/File;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1178
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1179
    const-string v2, "dbup-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong prefix."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1183
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gzdbup-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dbup-"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1184
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-static {v1}, Lcom/dropbox/android/util/h;->f(Ljava/io/File;)Z

    move-result v2

    .line 1187
    if-nez v2, :cond_42

    .line 1214
    :goto_41
    return-object v0

    .line 1194
    :cond_42
    :try_start_42
    invoke-static {p0}, Lcom/dropbox/android/util/O;->b(Ljava/io/File;)Ljava/io/InputStream;
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_7d
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_70

    move-result-object v3

    .line 1195
    :try_start_46
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v2}, Lcom/dropbox/android/util/O;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v4

    .line 1196
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_88
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_55} :catch_8e

    .line 1197
    :try_start_55
    invoke-static {v3, v2}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 1199
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_8c
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5b} :catch_91

    move-result v4

    if-eqz v4, :cond_66

    .line 1210
    invoke-static {v3}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 1211
    invoke-static {v2}, Ldbxyzptlk/z/c;->a(Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_41

    .line 1204
    :cond_66
    :try_start_66
    invoke-static {v1}, Lcom/dropbox/android/util/h;->f(Ljava/io/File;)Z
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_8c
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_91

    .line 1210
    invoke-static {v3}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 1211
    invoke-static {v2}, Ldbxyzptlk/z/c;->a(Ljava/io/OutputStream;)V

    goto :goto_41

    .line 1206
    :catch_70
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    .line 1208
    :goto_73
    :try_start_73
    invoke-static {v1}, Lcom/dropbox/android/util/h;->f(Ljava/io/File;)Z
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_8c

    .line 1210
    invoke-static {v3}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 1211
    invoke-static {v2}, Ldbxyzptlk/z/c;->a(Ljava/io/OutputStream;)V

    goto :goto_41

    .line 1210
    :catchall_7d
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_81
    invoke-static {v3}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 1211
    invoke-static {v2}, Ldbxyzptlk/z/c;->a(Ljava/io/OutputStream;)V

    throw v0

    .line 1210
    :catchall_88
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_81

    :catchall_8c
    move-exception v0

    goto :goto_81

    .line 1206
    :catch_8e
    move-exception v2

    move-object v2, v0

    goto :goto_73

    :catch_91
    move-exception v4

    goto :goto_73
.end method

.method public static h()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 97
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "cameraupload.scan.finished"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static h(Ljava/io/File;)Ljava/io/InputStream;
    .registers 3
    .parameter

    .prologue
    .line 1218
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzdbup-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1219
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/dropbox/android/util/O;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 1221
    :goto_1a
    return-object v0

    :cond_1b
    invoke-static {p0}, Lcom/dropbox/android/util/O;->b(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1a
.end method

.method public static i()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 101
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "userid.change"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static j()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 105
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "pref.changed"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static k()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 109
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "cameraupload.tour.pref.changed"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static l()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 113
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "cameraupload.tour.pref.final.value"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static m()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 117
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "block.scan"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static n()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 121
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "textedit.open"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static o()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 125
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "textedit.save"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static p()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 129
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "user.clear.cache"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static q()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 137
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "menu.create.dialog"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static r()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 144
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "user.unlink"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static s()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 151
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "user.unlink.done"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static t()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 155
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "unlink.broadcast"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static u()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 159
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "battery.level"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static v()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 163
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "camera.upload.command"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static w()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 167
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "camera.upload.fullscan.event"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static x()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 171
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "video.start"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static y()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 175
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "video.prepared"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static z()Lcom/dropbox/android/util/r;
    .registers 2

    .prologue
    .line 179
    new-instance v0, Lcom/dropbox/android/util/r;

    const-string v1, "video.completed"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
