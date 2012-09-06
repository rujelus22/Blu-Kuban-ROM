.class final Lcom/twitter/android/gl;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/UserQueryActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/UserQueryActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/gl;->a:Lcom/twitter/android/UserQueryActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/UserQueryActivity;Lcom/twitter/android/gk;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twitter/android/gl;-><init>(Lcom/twitter/android/UserQueryActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/ac;)V
    .registers 9

    const v1, 0x7f0b004f

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/twitter/android/gl;->a:Lcom/twitter/android/UserQueryActivity;

    invoke-virtual {v2, p2}, Lcom/twitter/android/UserQueryActivity;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/twitter/android/gl;->a:Lcom/twitter/android/UserQueryActivity;

    iput-boolean v0, v2, Lcom/twitter/android/UserQueryActivity;->g:Z

    if-eqz p5, :cond_3b

    const/16 v2, 0xc8

    if-ne p3, v2, :cond_2d

    iget-object v1, p0, Lcom/twitter/android/gl;->a:Lcom/twitter/android/UserQueryActivity;

    invoke-virtual {v1, p5}, Lcom/twitter/android/UserQueryActivity;->b(Lcom/twitter/android/api/ac;)V

    :goto_1b
    if-lez v0, :cond_2c

    iget-object v1, p0, Lcom/twitter/android/gl;->a:Lcom/twitter/android/UserQueryActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/gl;->a:Lcom/twitter/android/UserQueryActivity;

    invoke-virtual {v0}, Lcom/twitter/android/UserQueryActivity;->finish()V

    :cond_2c
    return-void

    :cond_2d
    const/16 v0, 0x193

    if-ne p3, v0, :cond_39

    iget-boolean v0, p5, Lcom/twitter/android/api/ac;->h:Z

    if-eqz v0, :cond_39

    const v0, 0x7f0b00e1

    goto :goto_1b

    :cond_39
    move v0, v1

    goto :goto_1b

    :cond_3b
    const/16 v0, 0x194

    if-ne p3, v0, :cond_43

    const v0, 0x7f0b0122

    goto :goto_1b

    :cond_43
    move v0, v1

    goto :goto_1b
.end method
