.class public Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;
.super Ljava/lang/Object;
.source "ContactsManipulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/ContactsManipulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactInfo"
.end annotation


# instance fields
.field public formattedNumber:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/ContactsManipulator;

.field public type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/ContactsManipulator;)V
    .registers 3
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->this$0:Lcom/google/android/apps/googlevoice/ContactsManipulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->name:Ljava/lang/String;

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->type:Ljava/lang/String;

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 144
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 148
    const-string v0, "%s (%s) %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->type:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->formattedNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
