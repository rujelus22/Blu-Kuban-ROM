.class Lcom/vlingo/client/contacts/ViewContactActivity$Contact;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/contacts/ViewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Contact"
.end annotation


# instance fields
.field id:I

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/vlingo/client/contacts/ViewContactActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/contacts/ViewContactActivity;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter "name"
    .parameter "id"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;->this$0:Lcom/vlingo/client/contacts/ViewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;->name:Ljava/lang/String;

    .line 167
    iput p3, p0, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;->id:I

    .line 168
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 177
    instance-of v2, p1, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;

    if-eqz v2, :cond_f

    move-object v0, p1

    .line 178
    check-cast v0, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;

    .line 179
    .local v0, c:Lcom/vlingo/client/contacts/ViewContactActivity$Contact;
    iget v2, v0, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;->id:I

    iget v3, p0, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;->id:I

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    .line 181
    .end local v0           #c:Lcom/vlingo/client/contacts/ViewContactActivity$Contact;
    :cond_f
    return v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;->id:I

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;->name:Ljava/lang/String;

    return-object v0
.end method
