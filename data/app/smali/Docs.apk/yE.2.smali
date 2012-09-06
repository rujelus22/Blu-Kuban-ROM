.class public LyE;
.super Ljava/lang/Object;
.source "TrafficTest.java"


# instance fields
.field private a:I

.field private final a:Landroid/content/Context;

.field private final a:Landroid/os/Handler;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, LyE;->a:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, LyE;->b:I

    .line 60
    iput-object p1, p0, LyE;->a:Landroid/content/Context;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LyE;->a:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method static synthetic a(LyE;)I
    .registers 2
    .parameter

    .prologue
    .line 20
    iget v0, p0, LyE;->a:I

    return v0
.end method

.method static synthetic a(LyE;)V
    .registers 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, LyE;->b()V

    return-void
.end method

.method static synthetic a(LyE;LxQ;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, LyE;->b(LxQ;)V

    return-void
.end method

.method static synthetic b(LyE;)I
    .registers 3
    .parameter

    .prologue
    .line 20
    iget v0, p0, LyE;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LyE;->a:I

    return v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 114
    invoke-static {}, LBw;->a()LBF;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LBF;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Outbound headers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LBF;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Outbound (post) data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LBF;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Inbound headers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LBF;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Inbound data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LBF;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TCP Bytes sent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LBF;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TCP Bytes received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LBF;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, LyE;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 127
    return-void
.end method

.method private b(LxQ;)V
    .registers 6
    .parameter

    .prologue
    .line 85
    iget v0, p0, LyE;->a:I

    const-string v1, "14. EXCLUSION OF WARRANTIES\n\n14.1 NOTHING IN THESE TERMS, INCLUDING SECTIONS 14 AND 15, SHALL EXCLUDE OR LIMIT GOOGLE\u2019S WARRANTY OR LIABILITY FOR LOSSES WHICH MAY NOT BE LAWFULLY EXCLUDED OR LIMITED BY APPLICABLE LAW. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF CERTAIN WARRANTIES OR CONDITIONS OR THE LIMITATION OR EXCLUSION OF LIABILITY FOR LOSS OR DAMAGE CAUSED BY NEGLIGENCE, BREACH OF CONTRACT OR BREACH OF IMPLIED TERMS, OR INCIDENTAL OR CONSEQUENTIAL DAMAGES. ACCORDINGLY, ONLY THE LIMITATIONS WHICH ARE LAWFUL IN YOUR JURISDICTION WILL APPLY TO YOU AND OUR LIABILITY WILL BE LIMITED TO THE MAXIMUM EXTENT PERMITTED BY LAW.\n\n14.2 YOU EXPRESSLY UNDERSTAND AND AGREE THAT YOUR USE OF THE SERVICES IS AT YOUR SOLE RISK AND THAT THE SERVICES ARE PROVIDED \"AS IS\" AND \"AS AVAILABLE.\"\n\n14.3 IN PARTICULAR, GOOGLE, ITS SUBSIDIARIES AND AFFILIATES, AND ITS LICENSORS DO NOT REPRESENT OR WARRANT TO YOU THAT:\n(A) YOUR USE OF THE SERVICES WILL MEET YOUR REQUIREMENTS,\n(B) YOUR USE OF THE SERVICES WILL BE UNINTERRUPTED, TIMELY, SECURE OR FREE FROM ERROR,\n(C) ANY INFORMATION OBTAINED BY YOU AS A RESULT OF YOUR USE OF THE SERVICES WILL BE ACCURATE OR RELIABLE, AND\n(D) THAT DEFECTS IN THE OPERATION OR FUNCTIONALITY OF ANY SOFTWARE PROVIDED TO YOU AS PART OF THE SERVICES WILL BE CORRECTED.\n\n14.4 ANY MATERIAL DOWNLOADED OR OTHERWISE OBTAINED THROUGH THE USE OF THE SERVICES IS DONE AT YOUR OWN DISCRETION AND RISK AND THAT YOU WILL BE SOLELY RESPONSIBLE FOR ANY DAMAGE TO YOUR COMPUTER SYSTEM OR OTHER DEVICE OR LOSS OF DATA THAT RESULTS FROM THE DOWNLOAD OF ANY SUCH MATERIAL.\n\n14.5 NO ADVICE OR INFORMATION, WHETHER ORAL OR WRITTEN, OBTAINED BY YOU FROM GOOGLE OR THROUGH OR FROM THE SERVICES SHALL CREATE ANY WARRANTY NOT EXPRESSLY STATED IN THE TERMS.\n\n14.6 GOOGLE FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES AND CONDITIONS OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO THE IMPLIED WARRANTIES AND CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_17

    .line 86
    iget-object v0, p0, LyE;->a:Landroid/os/Handler;

    new-instance v1, LyF;

    invoke-direct {v1, p0}, LyF;-><init>(LyE;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    :goto_16
    return-void

    .line 95
    :cond_17
    iget-object v0, p0, LyE;->a:Landroid/os/Handler;

    new-instance v1, LyG;

    invoke-direct {v1, p0, p1}, LyG;-><init>(LyE;LxQ;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, LyE;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public a(LxQ;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-virtual {p1}, LxQ;->getController()LvU;

    move-result-object v0

    .line 66
    invoke-interface {v0}, LvU;->a()Lvo;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Lvo;->b()V

    .line 69
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_e
    invoke-interface {v0, v2, v3}, LvU;->a(IZ)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1d

    .line 71
    invoke-interface {v1}, Lvo;->c()V

    .line 74
    iput v4, p0, LyE;->a:I

    .line 75
    invoke-static {}, LBw;->b()V

    .line 76
    invoke-direct {p0, p1}, LyE;->b(LxQ;)V

    .line 77
    return-void

    .line 71
    :catchall_1d
    move-exception v0

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method
