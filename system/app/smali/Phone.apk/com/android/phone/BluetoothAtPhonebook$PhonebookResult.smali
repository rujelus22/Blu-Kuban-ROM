.class Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
.super Ljava/lang/Object;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtPhonebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonebookResult"
.end annotation


# instance fields
.field public cursor:Landroid/database/Cursor;

.field public nameColumn:I

.field public numberColumn:I

.field final synthetic this$0:Lcom/android/phone/BluetoothAtPhonebook;

.field public typeColumn:I


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothAtPhonebook;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    return-void
.end method
