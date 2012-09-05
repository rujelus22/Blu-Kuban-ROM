.class Lcom/android/providers/contacts/ContactsProvider2$DeletedRawContactsThread;
.super Ljava/lang/Thread;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeletedRawContactsThread"
.end annotation


# instance fields
.field private ids:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "ids"

    .prologue
    .line 2982
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$DeletedRawContactsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 2983
    const-string v0, "DeletedRawContactsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2980
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$DeletedRawContactsThread;->ids:Ljava/lang/String;

    .line 2984
    iput-object p2, p0, Lcom/android/providers/contacts/ContactsProvider2$DeletedRawContactsThread;->ids:Ljava/lang/String;

    .line 2985
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$DeletedRawContactsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_data_id IS NOT NULL AND contact_id in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2$DeletedRawContactsThread;->ids:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2991
    return-void
.end method
