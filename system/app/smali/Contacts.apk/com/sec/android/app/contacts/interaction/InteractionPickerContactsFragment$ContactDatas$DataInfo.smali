.class public Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;
.super Ljava/lang/Object;
.source "InteractionPickerContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataInfo"
.end annotation


# instance fields
.field public contactId:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public dataId:Ljava/lang/String;

.field public dataType:I

.field public displayName:Ljava/lang/String;

.field public displayNameAlt:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;

.field public typeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;)V
    .registers 2
    .parameter

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas$DataInfo;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$ContactDatas;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
