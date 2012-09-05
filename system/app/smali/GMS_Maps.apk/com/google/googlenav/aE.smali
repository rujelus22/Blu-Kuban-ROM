.class Lcom/google/googlenav/aE;
.super Lcom/google/googlenav/aG;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/googlenav/RatingReminderManager;


# direct methods
.method constructor <init>(Lcom/google/googlenav/RatingReminderManager;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/googlenav/aE;->d:Lcom/google/googlenav/RatingReminderManager;

    iput-object p2, p0, Lcom/google/googlenav/aE;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/googlenav/aE;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/aE;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/aG;-><init>(Lcom/google/googlenav/aE;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/h;)V
    .registers 6

    invoke-static {p1}, Lcom/google/googlenav/RatingReminderManager;->b(Lcom/google/googlenav/h;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/aE;->d:Lcom/google/googlenav/RatingReminderManager;

    iget-object v1, p0, Lcom/google/googlenav/aE;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/googlenav/aE;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/aE;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/RatingReminderManager;->a(Lcom/google/googlenav/RatingReminderManager;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method
