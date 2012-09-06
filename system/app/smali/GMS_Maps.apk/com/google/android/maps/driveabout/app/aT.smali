.class Lcom/google/android/maps/driveabout/app/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/aD;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/al;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/al;Landroid/widget/EditText;Lcom/google/android/maps/driveabout/app/aD;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 964
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/at;->c:Lcom/google/android/maps/driveabout/app/al;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/at;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/at;->b:Lcom/google/android/maps/driveabout/app/aD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/at;->c:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/al;->s()V

    .line 973
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/at;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 974
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 976
    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/at;->c:Lcom/google/android/maps/driveabout/app/al;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/al;->b(Lcom/google/android/maps/driveabout/app/al;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v0

    const-string v1, "HomeAddress"

    invoke-virtual {v0, v1}, Lt/s;->a(Ljava/lang/String;)Lt/s;

    .line 984
    :goto_27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/at;->b:Lcom/google/android/maps/driveabout/app/aD;

    if-eqz v0, :cond_30

    .line 985
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/at;->b:Lcom/google/android/maps/driveabout/app/aD;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/aD;->a()V

    .line 987
    :cond_30
    return-void

    .line 979
    :cond_31
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/at;->c:Lcom/google/android/maps/driveabout/app/al;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/al;->b(Lcom/google/android/maps/driveabout/app/al;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "HomeAddress"

    invoke-static {v1, v2, v0}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method
