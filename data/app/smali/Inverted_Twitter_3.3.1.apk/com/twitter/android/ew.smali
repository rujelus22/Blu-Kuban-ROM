.class final Lcom/twitter/android/ew;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/Intent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/ew;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/ew;->b:I

    iput-object p3, p0, Lcom/twitter/android/ew;->c:Landroid/content/Intent;

    return-void
.end method
