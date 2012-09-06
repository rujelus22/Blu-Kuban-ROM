.class final Lcom/twitter/android/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/HomeTabActivity;

.field private b:Lcom/twitter/android/client/Session;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/twitter/android/HomeTabActivity;Lcom/twitter/android/client/Session;I)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/ay;->b:Lcom/twitter/android/client/Session;

    iput p3, p0, Lcom/twitter/android/ay;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lcom/twitter/android/ay;->c:I

    packed-switch v0, :pswitch_data_20

    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/HomeTabActivity;

    iget-object v0, v0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ay;->b:Lcom/twitter/android/client/Session;

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;III)Ljava/lang/String;

    goto :goto_6

    :pswitch_13
    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/HomeTabActivity;

    iget-object v0, v0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ay;->b:Lcom/twitter/android/client/Session;

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;II)Ljava/lang/String;

    goto :goto_6

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_7
        :pswitch_13
    .end packed-switch
.end method
