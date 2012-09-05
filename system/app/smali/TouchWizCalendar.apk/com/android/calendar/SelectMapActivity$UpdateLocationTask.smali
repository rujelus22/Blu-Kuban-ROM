.class Lcom/android/calendar/SelectMapActivity$UpdateLocationTask;
.super Landroid/os/AsyncTask;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateLocationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/maps/GeoPoint;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SelectMapActivity;


# direct methods
.method private constructor <init>(Lcom/android/calendar/SelectMapActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/android/calendar/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/calendar/SelectMapActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/SelectMapActivity;Lcom/android/calendar/SelectMapActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 838
    invoke-direct {p0, p1}, Lcom/android/calendar/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/calendar/SelectMapActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 838
    check-cast p1, [Lcom/google/android/maps/GeoPoint;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/calendar/SelectMapActivity$UpdateLocationTask;->doInBackground([Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .registers 4
    .parameter "point"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/calendar/SelectMapActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    #calls: Lcom/android/calendar/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/calendar/SelectMapActivity;->access$900(Lcom/android/calendar/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 838
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/calendar/SelectMapActivity$UpdateLocationTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 852
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 854
    iget-object v1, p0, Lcom/android/calendar/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/calendar/SelectMapActivity;

    #getter for: Lcom/android/calendar/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/calendar/SelectMapActivity;->access$1000(Lcom/android/calendar/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 856
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 858
    .local v0, length:I
    iget-object v1, p0, Lcom/android/calendar/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/calendar/SelectMapActivity;

    #getter for: Lcom/android/calendar/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/calendar/SelectMapActivity;->access$1000(Lcom/android/calendar/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-lez v0, :cond_24

    .end local v0           #length:I
    :goto_1b
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 860
    iget-object v1, p0, Lcom/android/calendar/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/calendar/SelectMapActivity;

    #setter for: Lcom/android/calendar/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/calendar/SelectMapActivity;->access$202(Lcom/android/calendar/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 864
    :cond_23
    return-void

    .line 858
    .restart local v0       #length:I
    :cond_24
    const/4 v0, 0x0

    goto :goto_1b
.end method
