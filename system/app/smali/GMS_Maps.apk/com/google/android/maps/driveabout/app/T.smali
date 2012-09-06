.class Lcom/google/android/maps/driveabout/app/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/t;->b:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->b:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const-string v1, "Show Disclaimer"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/t;->b:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/al;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/al;->m()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1223
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->b:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/t;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->b:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    .line 1225
    return-void
.end method
