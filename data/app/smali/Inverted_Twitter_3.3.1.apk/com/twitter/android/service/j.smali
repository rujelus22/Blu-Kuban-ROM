.class final Lcom/twitter/android/service/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/service/TwitterService;

.field private final b:Landroid/content/Intent;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/twitter/android/service/TwitterService;Landroid/content/Intent;I)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/service/j;->a:Lcom/twitter/android/service/TwitterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/service/j;->b:Landroid/content/Intent;

    iput p3, p0, Lcom/twitter/android/service/j;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/twitter/android/service/j;->a:Lcom/twitter/android/service/TwitterService;

    iget-object v1, p0, Lcom/twitter/android/service/j;->b:Landroid/content/Intent;

    iget v2, p0, Lcom/twitter/android/service/j;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->a(Landroid/content/Intent;I)V

    return-void
.end method
