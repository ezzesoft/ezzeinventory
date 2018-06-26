using ezzeinventory.DataAccess;
using ezzeinventory.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EzzyInventory.Repositories
{
    public class MasterRepository: IMaster
    {
        private ezzeinventoryEntities EzzeInventoryEntities = new ezzeinventoryEntities();      
    }
}
