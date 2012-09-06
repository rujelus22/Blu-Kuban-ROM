.class Lcom/google/android/maps/driveabout/app/cT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/RmiPreference;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/RmiPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cT;->a:Lcom/google/android/maps/driveabout/app/RmiPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 126
    const-string v0, "1"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cT;->a:Lcom/google/android/maps/driveabout/app/RmiPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setChecked(Z)V

    .line 128
    return-void
.end method
