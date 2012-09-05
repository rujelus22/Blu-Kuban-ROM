.class public interface abstract Lcom/vlingo/client/superdialer/SDContactsListAdaptor$SDContactClickListener;
.super Ljava/lang/Object;
.source "SDContactsListAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/superdialer/SDContactsListAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SDContactClickListener"
.end annotation


# virtual methods
.method public abstract onContactClicked(Lcom/vlingo/client/core/contacts/DisplayItem;)V
.end method

.method public abstract onContactHeaderClicked()V
.end method

.method public abstract onContactPhoneNumberClicked(Lcom/vlingo/client/core/contacts/VlingoContact;ILjava/lang/String;)V
.end method
