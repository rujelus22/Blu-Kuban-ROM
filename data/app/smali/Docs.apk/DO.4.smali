.class LDO;
.super Landroid/os/Handler;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/style/UpdateLayout;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:LDL;

.field private final a:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Landroid/text/Spannable;LDL;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 250
    iput-object p1, p0, LDO;->a:Landroid/text/Spannable;

    .line 251
    iput-object p2, p0, LDO;->a:LDL;

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, LDO;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 253
    return-void
.end method

.method static synthetic a(LDO;)LDL;
    .registers 2
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, LDO;->a:LDL;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, LDO;->a:Landroid/text/Spannable;

    invoke-interface {v0, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 258
    return-void
.end method
